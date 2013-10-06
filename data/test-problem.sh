#! /bin/bash

REALPATH=$(which realpath)
if [[ $REALPATH == "" ]]
then
    REALPATH="readlink -e "
fi

SOFT_TIME_LIMIT=0.1
HARD_TIME_LIMIT=1800
MEMORY_USAGE=2000000
OPTIONS="ipc seq-sat-lama-2011"
VERBOSE=false

while getopts ":vst:T:m:o:" opt
do
    case ${opt} in
        v)  # increase verbosity: tail -f search.log during the search
            VERBOSE=true ;; # true
        t)  # soft limit of the downward execution time
            # if no path was found when the time reached the limit
            # continues to search until the hard limit is reached.
            # if the path was already found then finishes
            # default value is 0 sec, which means it uses the hard limit by default
            SOFT_TIME_LIMIT=${OPTARG:-$SOFT_TIME_LIMIT} ;;
        T)  # hard limit of the downward execution time
            # default value is 30 min (same as ICAPS)
            HARD_TIME_LIMIT=${OPTARG:-$HARD_TIME_LIMIT} ;;
        m)  # limit memory usage under 1 GB
            MEMORY_USAGE=${OPTARG:-$MEMORY_USAGE} ;;
        o)  # specifies the search option
            OPTIONS=${OPTARG:-$OPTIONS} ;;
        \?) OPT_ERROR=1; break;;
        * ) echo "unsupported option $opt" ;;
    esac
done

shift $(($OPTIND - 1))

if [ $OPT_ERROR ]; then      # option error
  echo >&2 "usage: [-v] [-t SOFT_TIME_LIMIT] [-T HARD_TIME_LIMIT] [-m MEMORY_LIMIT] [-o FD_OPTIONS] problemfile [domainfile]"
  exit 1
fi

if [ $SOFT_TIME_LIMIT -gt $HARD_TIME_LIMIT ]
then
    echo >&2 "soft time limit should be smaller than hard limit"
    exit 1
fi


ulimit -v $MEMORY_USAGE -t $HARD_TIME_LIMIT

PDDL=$($REALPATH $1)

if [[ $2 != "" ]]
then
    DOMAIN=$($REALPATH $2)
else
    DOMAIN=$($REALPATH domain.pddl)
fi


if [[ $PDDL =~ .*\.pddl ]]
then
    PROBLEM_NAME=${PDDL%.pddl}
elif [[ $PDDL =~ .*pfile.* ]]
then
    # pfile1 etc...
    PROBLEM_NAME=$PDDL
fi  

SAS=$PROBLEM_NAME.sas
SAS_PLUS=$PROBLEM_NAME.sasp
FD_DIR=~/repos/downward

# lm_ff_syn = LAMA/FF synergy
# '--heuristic "hlm=lmcut(lm_rhw(reasonable_orders=true,lm_cost_type=2,cost_type=2))"
#          --search "lazy_wastar([hlm],preferred=[hlm],w=2)"'

rm -f $PROBLEM_NAME.time
rm -f $PROBLEM_NAME.cost
rm -f $PROBLEM_NAME.*.log
rm -f $PROBLEM_NAME.plan*
rm -f $SAS
rm -f $SAS_PLUS

TRANSLATE=$FD_DIR/src/translate/translate.py
PREPROCESS=$FD_DIR/src/preprocess/preprocess # < OUTPUT.SAS
SEARCH_DIR=$FD_DIR/src/search
SEARCH="$SEARCH_DIR/downward $OPTIONS"

echo $'\x1b[34;1m'---- process $PPID started -----------------------------
echo "MAX MEM(MB):          $MEMORY_USAGE"
echo "SOFT TIME LIMIT(sec): $SOFT_TIME_LIMIT"
echo "HARD TIME LIMIT(sec): $HARD_TIME_LIMIT"
echo "PROBLEM_NAME:         $PROBLEM_NAME"
echo "DOMAIN:               $DOMAIN"
echo "SEARCH COMMAND:       $SEARCH"
echo --------------------------------------------------------$'\x1b[0m'

TMPDIR=`mktemp -d`
trap "rm -rfv $TMPDIR" SIGINT
trap "rm -rfv $TMPDIR" EXIT
pushd $TMPDIR

touch $PROBLEM_NAME.translate.log
touch $PROBLEM_NAME.preprocess.log
touch $PROBLEM_NAME.search.log
if $VERBOSE
then
    # tail -f $PROBLEM_NAME.translate.log &
    # tail -f $PROBLEM_NAME.preprocess.log &
    tail -f $PROBLEM_NAME.search.log &
fi


$TRANSLATE $DOMAIN $PDDL >& $PROBLEM_NAME.translate.log
echo Translation Finished
mv output.sas $SAS
for groups in $(ls *.groups)
do
    mv $groups $PROBLEM_NAME.$groups
done

$PREPROCESS < $SAS >& $PROBLEM_NAME.preprocess.log
echo Preprocessing Finished
mv output $SAS_PLUS

FD_STATUS=$(mktemp)
TIMEOUT_STATUS=$(mktemp)

coproc FD {
    $SEARCH < $SAS_PLUS >& $PROBLEM_NAME.search.log
    echo $? > $FD_STATUS
}
coproc TIMEOUT {
    sleep $SOFT_TIME_LIMIT
    echo t > $TIMEOUT_STATUS
}

CHECK_INTERVAL=5
if [ $SOFT_TIME_LIMIT -lt $CHECK_INTERVAL ]
then
    CHECK_INTERVAL=$SOFT_TIME_LIMIT
fi

while true
do
    sleep $CHECK_INTERVAL
    if [[ $(cat $FD_STATUS) != "" ]]
    then
        if [[ $(cat $FD_STATUS) == 0 ]]
        then
            echo "PID ($$): Search finished normally." >&2
        else
            echo "PID ($$): Reached the HARD limit, $FD_PID terminated" >&2 
        fi
        break
    elif [[ $(cat $TIMEOUT_STATUS) == t ]]
    then
        if ls sas_plan* > /dev/null
        then
            echo "PID ($$): Reached the SOFT limit. Path found, $FD_PID terminated" >&2
            pkill -15 -P $FD_PID
            break
        else
            echo "PID ($$): Reached the SOFT limit. Continue searching..." >&2
        fi
    fi
done

rm -f $FD_STATUS $TIMEOUT_STATUS

mv elapsed.time $PROBLEM_NAME.time
mv plan_numbers_and_cost $PROBLEM_NAME.cost

echo $'\x1b[34;1m'---- process $PPID finished ----------------------------
if [[ -e sas_plan.1 ]]
then
    echo Result:
    for plan in $(ls sas_plan.*)
    do
        mv $plan $PROBLEM_NAME.plan.${plan##*.}
        echo $PROBLEM_NAME.plan.${plan##*.}
    done
    cat $PROBLEM_NAME.cost
elif [[ -e sas_plan ]]
then
    echo Result:
    mv sas_plan $PROBLEM_NAME.plan.1
    echo $PROBLEM_NAME.plan.1
    cat $PROBLEM_NAME.cost
else
    echo "Search Failed: No path could be found in the current configuration."
fi
echo --------------------------------------------------------$'\x1b[0m'

popd

exit
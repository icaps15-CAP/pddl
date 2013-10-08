#! /bin/bash

PARALLEL=false

while getopts ":p" opt
do
    case ${opt} in
        p) PARALLEL=true ;;
        *) echo "unsupported option $opt" ;;
    esac
done

shift $(($OPTIND - 1))

if [ $OPT_ERROR ]; then      # option error
    echo "usage: [-p] directory prefix" >&2
    exit 1
fi


echo $0
echo ${0%%/*}
SDIR=$(readlink -e ${0%%/*})
echo $SDIR

SCRIPT=$(readlink -e $SDIR/test-problem.sh)

DIR=$(readlink -e $1)

echo $SCRIPT
echo $DIR

# $1 : フォルダ名
# $2 : the prefix of each problem

pushd $DIR
for pddl in $(ls -v $2*.pddl)
do
    echo $pddl
    if $PARALLEL
    then
        $SCRIPT $pddl &
    else
        $SCRIPT $pddl        
    fi
done
popd


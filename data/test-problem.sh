#! /bin/bash

PDDL=$1

if [[ $PDDL =~ .*\.pddl ]]
then
    PROBLEM_NAME=${PDDL%.pddl}
    PROBLEM_NUM=${PDDL:0:3}
elif [[ $PDDL =~ pfile.* ]]
then
    # pfile1 etc...
    PROBLEM_NAME=$PDDL
    PROBLEM_NUM=${PDDL:4}
fi  

rm -f $PROBLEM_NAME.time
rm -f $PROBLEM_NAME.plan*
rm -f $PROBLEM_NAME.sas
rm -f $PROBLEM_NAME.cost
rm -f elapsed.time
rm -f output
rm -f output.sas
rm -f sas_plan.*
rm -f plan_numbers_and_cost

SAS=$PROBLEM_NAME.sas
SAS_PLUS=$PROBLEM_NAME.sasp
FD_DIR=~/repos/downward
OPTIONS="ipc seq-sat-lama-2011"
HEURISTIC= #--heuristic

TRANSLATE=$FD_DIR/src/translate/translate.py
PREPROCESS=$FD_DIR/src/preprocess/preprocess # < OUTPUT.SAS
SEARCH_DIR=$FD_DIR/src/search
SEARCH="$SEARCH_DIR/downward $OPTIONS"


if [ -e $2 ]
then
    DOMAIN=$2
elif [ -e domain.pddl ]
then
    DOMAIN=domain.pddl
elif [ -e $PROBLEM_NUM-domain.pddl ]
then
    DOMAIN=$PROBLEM_NUM-domain.pddl
else
    DOMAIN=
fi


echo $'\x1b[34;1m'---- process $PPID started -----------------------------
echo PROBLEM_NAME:   $PROBLEM_NAME
echo DOMAIN:         $DOMAIN
echo SEARCH COMMAND: $SEARCH
echo --------------------------------------------------------$'\x1b[0m'

$TRANSLATE $DOMAIN $PDDL >& $PROBLEM_NAME.translate.log
mv output.sas $SAS
for groups in $(ls *.groups)
do
    mv $groups $PROBLEM_NAME.$groups
done

$PREPROCESS < $SAS >& $PROBLEM_NAME.preprocess.log
mv output $SAS_PLUS

$SEARCH < $SAS_PLUS >& $PROBLEM_NAME.search.log
ERROR=$?

mv elapsed.time $PROBLEM_NAME.time
mv plan_numbers_and_cost $PROBLEM_NAME.cost

echo $'\x1b[34;1m'---- process $PPID finished ----------------------------
echo Result:
for plan in $(ls sas_plan.*)
do
    mv $plan $PROBLEM_NAME.plan.${plan##*.}
    echo $PROBLEM_NAME.plan.${plan##*.}
done
echo --------------------------------------------------------$'\x1b[0m'

exit $ERROR
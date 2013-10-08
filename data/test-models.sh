#! /bin/bash

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
    $SCRIPT $pddl
done
popd


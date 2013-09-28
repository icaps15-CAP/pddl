#! /bin/bash

SCRIPT=$(realpath test-problem.sh)

pushd ${1##*/}
echo ${1##*/}
for pddl in $(ls $2*.pddl)
do
    echo $pddl
    $SCRIPT $pddl
done
popd


#! /bin/bash

SCRIPT=$(realpath test-problem.sh)
for pddl in $(ls $1)
do
    $SCRIPT $pddl
done


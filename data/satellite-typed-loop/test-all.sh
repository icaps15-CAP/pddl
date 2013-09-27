#! /bin/bash

for pddl in $(ls -v satellite-loop*.pddl)
do
    ../test-problem.sh -v $pddl domain.pddl
done
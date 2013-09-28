#! /bin/bash

for pddl in $(ls -v wood-test*.pddl)
do
    ../test-problem.sh $pddl domain.pddl
done
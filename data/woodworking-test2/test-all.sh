#! /bin/bash

for pddl in $(ls -v wood-test*.pddl)
do
    ../test-problem.sh -v $pddl domain.pddl
done
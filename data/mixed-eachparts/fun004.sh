#! /bin/bash

scr=../test-models.sh
opt="-m 15000000 -t 5 -T 21600"
$scr -S "-v" -p 1 . "^.*/.*[27]\.pddl" $opt

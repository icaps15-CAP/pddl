#! /bin/bash

scr=../test-models.sh
opt="-m 15000000 -t 5 -T 21600"
$scr -S "-v" -p 1 . "p8[13579].pddl" $opt

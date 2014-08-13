#!/bin/bash

for f in p*.pddl
do
    echo $f
    sed -i -e 's/(=.*$//g' $f
    sed -i -e 's/(:metric.*$//g' $f
done

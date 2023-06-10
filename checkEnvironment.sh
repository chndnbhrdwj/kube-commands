#!/bin/zsh
source environment.sh

if [ -z $ENV ];
then
    echo "USAGE: set the environment first"
    exit
fi
#!/bin/zsh
source environment.sh

directory="logs";

if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
    echo "Directory '$directory' created."
fi

if [ -z $ENV ];
then
    echo "USAGE: set the environment first"
    exit
fi

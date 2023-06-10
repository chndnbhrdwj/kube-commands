#!/bin/bash

if [ -z $1 ];
then
    echo "USAGE: Provide the environment number (1 for brp and 3 for dev3)"
    exit
elif [[ $1 == 1 ]]
then
    ENV="ho-it-dev1-i-cwf-brp"
    echo "Setting environment to $ENV"
elif [[ $1 == 3 ]]
then
    ENV="iptcwidev3"
    echo "Setting environment to $ENV"
else
    echo "Environment not recognized"    
fi

echo export ENV=$ENV > environment.sh
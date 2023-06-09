#!/bin/zsh

source checkEnvironment.sh

if [ -z $1 ];
then
	echo "provide the pod name as an argument"
else
	kubectl -n $ENV logs $1 -f
fi

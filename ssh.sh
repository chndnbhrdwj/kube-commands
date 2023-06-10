#!/bin/zsh
source environment.sh
source checkEnvironment.sh

if [ -z $1 ];
then
	echo "provide pod name as an argument" 
else
	kubectl -n $ENV exec -it $1 -- sh
fi

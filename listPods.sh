#!/bin/zsh
source environment.sh
source checkEnvironment.sh

if [ -z $1 ];
then
	kubectl -n $ENV get pods | grep -v 'Completed'
else
	kubectl -n $ENV get pods | grep $1 | grep -v 'Completed'
fi

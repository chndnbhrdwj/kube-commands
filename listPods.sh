#!/bin/zsh

source checkEnvironment.sh

if [ -z $1 ];
then
	kubectl -n $ENV get pods 
else
	kubectl -n $ENV get pods | grep $1
fi

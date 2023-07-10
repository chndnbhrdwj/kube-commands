#!/bin/zsh

source checkEnvironment.sh

if [ -z $1 ];
then
	echo "provide the pod name as an argument"
else
	if [ -z $2 ];
	then
	echo "No since time provided"
	kubectl -n $ENV logs --all-containers=true $1 | grep -v 'metrics in the last' | grep -v 'admin/healthcheck' |sed 's/\\t/	/g' | sed 's/\\n/\
/g' > logs/$1.log
	else
	echo "Pulling logs since $2"
	kubectl -n $ENV logs --all-containers=true $1 --since=$2 | grep -v 'metrics in the last' | grep -v 'admin/healthcheck' | sed 's/\\t/	/g' | sed 's/\\n/\
/g' > logs/$1.log
	fi
fi

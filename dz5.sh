#!/bin/bash

if [ $# -lt 1 ]
then
	echo 'Use at least 1 parameter.' >&2
	exit 1	
fi

ps -A | grep "[0-9]*:[0-9]*:[0-9]*.*$1"
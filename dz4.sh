#!/bin/bash

HISTFILE=~/.bash_history
set -o history

if [ $# -lt 1 ]
then
	echo 'Use at least 1 parameter.' >&2
	exit 1	
fi

history > temp.dz4_autorm

cat temp.dz4_autorm | grep "[0-9]*  $1 " | wc -l

# rm *.dz4_autorm
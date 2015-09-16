#!/bin/bash

i=$((0))
ipath="./"
o=$((0))
opath="./"

for arg in $@
do
	if [ $i -eq 1 ]
		then
		i=$((2))
		ipath=$arg
	fi

	if [ $o -eq 1 ]
		then
		o=$((2))
		opath=$arg
	fi

	if [ "$arg" = "-i" ]
		then
		i=$((1))
	fi

	if [ "$arg" = "-o" ]
		then
		o=$((1))
	fi
done

if [ $i -ne 2 ]
	then
	echo 'Parameter -i not specified.' >&2
	exit 1
fi

if [ $o -ne 2 ]
	then
	echo 'Parameter -o not specified.' >&2
	exit 1
fi

for f in $(find $ipath -type f -perm /111)
do
	cp $f $opath
done

#!/bin/bash

i="0"
for str in $(sort -u input.txt | sort -R)
do
	i=$((i+1))
	echo "$i  $str"
done

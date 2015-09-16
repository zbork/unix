#!/bin/bash

for path in $(find -mtime +0 -mtime -3 | grep -v ".sh$")
do
	mv {,_}$path
done
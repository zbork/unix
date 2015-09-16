#!/bin/bash

regexp="_\^H(.)_\^H(.)"
a=$(cal | cat -v | grep -oE $regexp)

[[ $a =~ $regexp ]]
first="${BASH_REMATCH[1]}"
second="${BASH_REMATCH[2]}"
echo "${first}${second}"
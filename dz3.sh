#!/bin/bash
rm -f results_dz3.txt

for a in $(cat numbers.txt)
do
	printf '%s: ' $a >> results_dz3.txt
	i="2"
	while [ $i -le $a ]
	do
		div=$((a % i))
		while [ $div -eq 0 ]
		do
			a=$((a / i))
			printf '%s ' $i >> results_dz3.txt
			div=$((a % i))
		done
		i=$((i+1))
	done
	printf '\n' >> results_dz3.txt
done
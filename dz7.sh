#!/bin/bash

rm -f rnd.txt

dd if=/dev/urandom of=./rnd.txt bs=1 count=$RANDOM
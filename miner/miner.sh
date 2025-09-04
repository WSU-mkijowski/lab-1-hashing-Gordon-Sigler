#!/bin/bash

## Prints all words in provided dictionary, Removed the print and kept the loop open.
## (you might want to find a bigger dictionary)
for word in $(cat ../data/dictionary); do

## prints all numbers between 100 and 105, so we changed to print all numbers from 1 to 1000 and just like for the first loop kept it open.
for salt in $(seq 1 1000); do

## Used the professors example to create our combined saltedword, then how to create the hash.	
saltedword="$salt""$word"
hashvalue=$(printf $saltedword | sha256sum)

## Make an if statment to print off any vaules that start with three zeros or more and end the two for loops.

if [[ $hashvalue =~ ^0{3,} ]]; then
	echo "$hashvalue - $saltedword"
fi
done
done



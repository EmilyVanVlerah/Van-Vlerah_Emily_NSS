#!/bin/bash
# This is a basic bash script.
read -p "What year? [nnnn]" a
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "A year, please! [nnnn]" a
	a="dog"
done
echo "Selected year: $a"

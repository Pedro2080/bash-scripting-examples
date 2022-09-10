#!/bin/bash

IFS=$'\n'

nums=($(cat 'file.txt' 2>/dev/null))

length=${#nums[@]}
if [[ $length -eq 0 ]]; then
    echo "File is empty"
    exit 1
fi

sum=0
min=${nums[0]}
max=${nums[0]}

for n in ${nums[@]}; do
    if [[ $n =~ ^[0-9]+$ ]]; then
        if [[ $n -lt $min ]]; then
            min=$n
        fi
        if [[ $n -gt $min ]]; then
            max=$n
        fi
        ((sum += n))
    fi
done

echo "Sum: $sum"
echo "Minimun: $min"
echo "Maximum: $max"

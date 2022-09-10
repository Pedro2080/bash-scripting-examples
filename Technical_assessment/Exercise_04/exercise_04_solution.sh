#!/bin/bash

IFS=$'\n'

INPUT_1=$1
OUTPUT_1=$2
OUTPUT_2=$3

nums=($(cat $INPUT_1 2>/dev/null))

length=${#nums[@]}
if [[ $length -eq 0 ]]; then
    echo "File is empty"
    exit 1
fi

sum=0
n_nums=0
a_nums=()

for n in ${nums[@]}; do
    if [[ $n =~ ^[0-9]+$ ]]; then
        a_nums+=($n)
    else
        ((n_nums++))

IFS=$'\n'

INPUT_1=$1
OUTPUT_1=$2
OUTPUT_2=$3

nums=($(cat $INPUT_1 2>/dev/null))

length=${#nums[@]}
if [[ $length -eq 0 ]]; then
    echo "File is empty"
    exit 1
fi

sum=0
n_nums=0
a_nums=()

for n in ${nums[@]}; do
    if [[ $n =~ ^[0-9]+$ ]]; then
        a_nums+=($n)
    else
        ((n_nums++))
    fi
done

odd=0
even=0
for n in ${nums[@]}; do
    if [ $((n%2)) -eq 0 ]; then
        echo $n >> $OUTPUT_1
        ((even++))
    else
        echo $n >> $OUTPUT_2
        ((odd++))
    fi
done

echo "Total Numbers: ${#a_nums[@]}"
echo "Total Words:   $n_nums"
echo "Even Numbers:  $even"
echo "Odd Numbers:   $odd"
    fi
done

odd=0
even=0
for n in ${nums[@]}; do
    if [ $((n%2)) -eq 0 ]; then
        echo $n >> $OUTPUT_1
        ((even++))
    else
        echo $n >> $OUTPUT_2
        ((odd++))
    fi
done

echo "Total Numbers: ${#a_nums[@]}"
echo "Total Words:   $n_nums"
echo "Even Numbers:  $even"
echo "Odd Numbers:   $odd"

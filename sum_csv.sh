#!/bin/bash
# Script to sum two numbers from a CSV file

if [ ! -f numbers.csv ]; then
    echo "CSV file 'numbers.csv' not found!"
    exit 1
fi

total_sum=0
while IFS=, read -r numberX numberY; do
    sum=$((numberX + numberY))
    echo "Sum of $numberX and $numberY is: $sum"
    total_sum=$((total_sum + sum))
done < numbers.csv

echo "Total sum of all pairs: $total_sum"

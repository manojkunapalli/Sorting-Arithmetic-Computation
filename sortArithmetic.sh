#!/bin/bash

echo "Welcome to Arithmetic Computation Problem"

declare -A sortDictionary
count=1

read -p "enter a = " a
read -p "enter b = " b
read -p "enter c = " c

result=$(( $a + $b * $c ))
sortDictionary[$count]=$result
count=$(( $count + 1 ))

result2=$(( $a * $b + $c ))
sortDictionary[$count]=$result2
count=$(( $count + 1 ))

result3=$(( $c + $a / $b ))
sortDictionary[$count]=$result3
count=$(( $count + 1 ))


result4=$(( $a % $b + $c ))
sortDictionary[$count]=$result
count=$(( $count + 1 ))

echo "a + b * c = $result"
echo "a * b + c = $result2"
echo "c + a / b = $result3"
echo "a % b + c = $result4"

echo "print dictionary = "
for i in "${!sortDictionary[@]}"
do
	echo "${i} : ${sortDictionary[$i]}"
done

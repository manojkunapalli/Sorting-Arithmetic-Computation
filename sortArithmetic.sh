#!/bin/bash

echo "Welcome to Arithmetic Computation Problem"

declare -A sortDictionary
array=()
count=1
index=0

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
echo -e
echo "print dictionary = "
for i in "${!sortDictionary[@]}"
do
	array[$index]=${sortDictionary[$i]}
	((index++))
	echo "${i} : ${sortDictionary[$i]}"
done
echo -e

len=${#array[@]}
echo "print Array = ${array[@]}"

echo -e
echo "sort results to print in Descending Order"
for (( j=0; j<${len}; j++));do
	for (( k=$((j + 1)); k<${len}; k++ ));do
		if [ ${array[j]} -le ${array[k]} ]
		then
			temp=${array[j]}
			array[j]=${array[k]}
			array[k]=$temp
		fi
	done
done
echo "==> ${array[@]}"












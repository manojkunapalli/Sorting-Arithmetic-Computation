#!/bin/bash

echo "Welcome to Arithmetic Computation Problem"

read -p "enter a = " a
read -p "enter b = " b
read -p "enter c = " c

result=$(( $a + $b * $c ))
result2=$(( $a * $b + $c ))
result3=$(( $c + $a / $b ))

echo "a + b * c = $result"
echo "a * b + c = $result2"
echo "c + a / b = $result3"

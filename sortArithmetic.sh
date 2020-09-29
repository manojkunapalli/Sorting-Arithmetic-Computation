#!/bin/bash

echo "Welcome to Arithmetic Computation Problem"

read -p "enter a = " a
read -p "enter b = " b
read -p "enter c = " c

result=$(( $a + $b * $c ))

echo "a + b * c = $result"

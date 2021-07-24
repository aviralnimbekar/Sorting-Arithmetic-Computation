#!/bin/bash -x

echo "Welcome to Sorting Arithmetic Computation Problem"

read -p "Enter value of a: " a 
read -p "Enter value of b: " b
read -p "Enter value of c: " c

A=$(($a + $b * $c))
B=$(($a * $b + $c))
C=$(($c + $a / $b))
D=$(($a % $b + $c))

declare -A resulted_Sum 

resulted_Sum[A]=$A
resulted_Sum[B]=$B
resulted_Sum[C]=$C
resulted_Sum[D]=$D

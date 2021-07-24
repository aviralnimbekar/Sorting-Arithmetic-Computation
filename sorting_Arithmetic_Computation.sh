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
resulted_Sum[1]=$A
resulted_Sum[2]=$B
resulted_Sum[3]=$C
resulted_Sum[4]=$D

declare -a arr_Sum
for ((i=1; i<5; i++))
do
	arr_Sum[$i]=${resulted_Sum[$i]}
done

for ((i=1; i<=$((${#arr_Sum[@]} - 1)); i++))
do
	for ((j=$((i + 1)); j<=${#arr_Sum[@]} ; j++))
	do
		if [[ ${arr_Sum[$i]} -gt ${arr_Sum[$j]} ]]
       		then
               		tmp=${arr_Sum[$i]}
               		arr_Sum[$i]=${arr_Sum[$j]}
               		arr_Sum[$j]=$tmp         
       		fi
      	done
done

echo "${arr_Sum[@]}"

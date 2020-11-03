#!/bin/bash
echo "Welcome To Airthmatic Computation"
read -p "Enter first number" a
read -p "Enter second number" b
read -p "Enter third number" c
aa=`expr $a + $b \* $c`
bb=`expr $a % $b + $c`
cc=`expr $c + $a / $b`
dd=`expr $a \* $b + $c`


declare -A StoringValues

StoringValues[0]=$aa
StoringValues[1]=$bb
StoringValues[2]=$cc
StoringValues[3]=$dd

#echo "All values : ${StoringValues[@]} "
#echo "All keys : ${!StoringValues[@]} "
#echo " Elements : ${#StoringValues[@]}  "

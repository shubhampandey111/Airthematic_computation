#!/bin/bash
echo "Welcome To Airthmatic Computation"
read -p "Enter first number" a
read -p "Enter second number" b
read -p "Enter third number" c
aa=`expr $a + $b \* $c`
dd=`expr $a \* $b + $c`
cc=`expr $c + $a / $b`
bb=`expr $a % $b + $c`

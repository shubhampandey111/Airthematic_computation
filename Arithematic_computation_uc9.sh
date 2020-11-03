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

ab()
{

for i in ${!StoringValues[@]}
do
StoringArray[$i]=${StoringValues[$i]}
done
echo ${StoringArray[@]}

n=$(("${#StoringArray[@]}"))
#echo $n
temp=0

for(( i=0; i<$n; i++ ))
do
    for(( j=i+1; j<$n; j++ ))
    do

        if [[ ${StoringArray[i]} -lt ${StoringArray[j]} ]]
        then
                 temp=$(( ${StoringArray[$i]} ))
                 StoringArray[i]=$(( ${StoringArray[$j]} ))
                 StoringArray[j]=$(( $temp ))

        fi
 done
done

for(( j=0; j<$n; j++ ))
do
 echo "" ${StoringArray[$j]} ""
done
}
ab
abc()
{

for i in ${!StoringValues[@]}
do
StoringArray[$i]=${StoringValues[$i]}
done
echo ${StoringArray[@]}

n=$(("${#StoringArray[@]}"))
#echo $n
temp=0

for(( i=0; i<$n; i++ ))
do
    for(( j=i+1; j<$n; j++ ))
    do

        if [[ ${StoringArray[i]} -gt ${StoringArray[j]} ]]
        then
                 temp=$(( ${StoringArray[$i]} ))
                 StoringArray[i]=$(( ${StoringArray[$j]} ))
                 StoringArray[j]=$(( $temp ))

        fi
 done
done

for(( j=0; j<$n; j++ ))
do
 echo "" ${StoringArray[$j]} ""
done
}
abc

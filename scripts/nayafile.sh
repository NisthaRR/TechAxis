#!/bin/bash


# FUNCTION

fun1(){
	echo "Function le Hello bhanyo"
}

fun1

addition(){
	local num1=$1
	local num2=$2
	local num3=$3
	sum=$((num1+num2+num3))
	echo "Sum is $sum"
}

addition 5 10 15


# Check file

if [ -f "data.txt" ]
then
	echo "file exists"
else
	echo "file doesn't exist."
fi

# Check directory

if [ -d "data.txt" ]
then
        echo "file exists"
else
        echo "file doesn't exist."
fi

#Loop Iteration

items="/home/nistha/items.txt"

for x in $(cat $items)
do
	echo $x
done


#WHILE LOOP

a=10
until [ $a -eq 1 ]
do
	echo $a
	a=$((a-1))
done





#For Loop 
count=0
num=10

while [ $count -le $num ]
do
	echo "Numbers are $count"
	 count=$((count+1))
done





for i in 1 2 3
do
	echo "Number is $i"
done

echo "Another way of looping"

for j in Luffy Zoro Sanji
do
	echo "Name is $j"
done

echo "Third way of looping"

for x in $(seq 1 5)
do
	echo "Number is $x"
done




echo "Choose an option"
echo "a = To see the current date"
echo "b = To see the current list"
echo "c = To see the current user"

read choice 

case $choice in 
	a) date;;
	b)ls;;
	c)whoami;;
	*)echo "Not a valid input!"

esac



read -p "Enter your country: " country

if [ $country = "Nepal" ]

then
	echo "I am Nepali."
elif 
	[ $country = "India" ]
then
	echo "I am an Indian."
else 
	echo "I am Aliean."
fi

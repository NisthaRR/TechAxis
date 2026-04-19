#!/bin/bash 

read -p "Enter your name: " name
read -p "Enter your address: " address


read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "First number is $num1"
echo "Second number is $num2"
sum=$((num1+num2))

echo "$sum"

echo "Name is $name"
echo "Address is $address"



#!/bin/bash

echo "Hello World"

read -p "Enter your address: " address
echo "Address is $address"

readonly section="DevOps"
#comment 

name="Zoro"
age=19
user=$(whoami)
ip_address=$(hostname -I)


echo "Name is $name"
echo "Age is $age"
echo "User is $user IP address is $ip_address"
echo "Section : $section"

echo "Enter your address"
read address 

echo "Address is $address"

read -p "Enter your age" age 
echo "Age is $age"



 


#!/bin/bash 

read -p "Enter your username:" user 
read -p "Enter your full_name:" name

INFO=$user,$name
if [ -z $user ]
then 
	echo "error username can't be empty"
fi
read -p "please confirm that you have entered the correct information. is your username is:$user and your full_name is: $name [y/n]" input 

case $input in 
	N | n | no |NO )
	echo "wait 5 seconds and try to enter you info again "
	sleep 5
	./info.sh 
	;;
        Y | y | yes | YES )
		echo $INFO >> employee.csv
		;;
	*)
		echo "please answer from the choices"
		exit 
		;;
esac
echo "your data has been stored successfuly , wait for your account "


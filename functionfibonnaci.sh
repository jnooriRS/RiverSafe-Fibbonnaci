#!/bin/bash
User=$1
fibonnacifinder(){
	fib1=0
	fib2=1
	find=2
	fibnum=0
	echo what is the fib number you want to search?
		#read User
		echo $User
	while [ $find -le $User ]
 do
	fibnum=$((fib1 + fib2))
	fib1=$fib2
	fib2=$fibnum
	find=$((find+1))
	echo $fibnum
 done
}
fibonnacifinder $User
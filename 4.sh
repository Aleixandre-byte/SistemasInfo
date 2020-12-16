#!/bin/bash

num=-1
while [ $num -lt 0 ] ; do

read -p "escribe un numero:" num
done

for i in `seq 0 $num `
do
	echo "$i"
done

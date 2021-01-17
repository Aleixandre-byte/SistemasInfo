#!/bin/bash

ope=1;
read -p "Introduce un número:" num

for i in `seq $i $num`
do
ope=$((ope*i))
echo "$i x"

done

echo "= $ope"

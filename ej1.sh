#!/bin/bash

num=5
ope=0
for i in `seq 5 105`
do
  ope=$((i%5))
  if [[ $ope = 0 ]];
   then
     echo $i;
  fi
done

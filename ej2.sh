read -p "Introduce un número entre el 1 y el 100:" num
ope=0

for i in `seq 1 10`
do

ope=$((i*num))

echo "$i x $num = $ope"

done

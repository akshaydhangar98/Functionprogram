read -p "Enter the lower limit of the range: " low
read -p "Enter the upper limit of the range: " high
echo " The prime numbers between $low and $high are: "

for ((i=$low;i<=$high;i++))
do
	c=0
	for ((j=2;j<= $(($i/2));j++))
	do
	     c=0
	     if [ $(($i%$j)) -eq 0 ]
	     then
	           ((c++))
	           break
	     fi
	done

if [ $c -eq 0 ]
then
    echo $i
fi
done

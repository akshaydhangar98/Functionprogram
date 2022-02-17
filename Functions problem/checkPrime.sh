read -p "Enter a number: " num
c=0

for((i=2;i<=$(($num/2));i++))
do

	if [ $(($num%$i)) -eq 0 ]
		then
		((c++))
		echo "The number is not prime"
		break;
	fi
done

if [ $c -eq 0 ]
then
  echo "The number is prime"
fi


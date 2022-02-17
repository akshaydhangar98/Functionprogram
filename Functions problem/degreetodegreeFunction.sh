echo "1-convert deg-Fahrenheit to deg-Celsius"
echo "2-convert deg-Celsius to deg-Fahrenheit"
read -p "Enter your choice: " choice

function convert ( )
{
a=$1

if [ $a -eq 1 ]
then
	read -p "Enter the temperature in Fahrenheit: " far
	cel=$(( (($far-32)*(5000/9)/1000) ))
	echo $cel
fi


if [ $a -eq 2 ]
then
	read -p "Enter the  temperature in Celsius: " cel
	far=$(( ((($cel*(9000/5))/1000)+32) ))
	echo $far
fi

}


result=$( convert $choice)
if [ $choice -eq 1 ]
then
	echo "The temperature in Celsius is: $result"
else
	echo "The temperature in Fahrenheit is: $result"
fi








#!/bin/bash
echo "Enter a number"
read n
sd=0
rev=0

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    rev=$(( $rev *\ 10 + $sd ))
    n=$(( $n / 10 ))
done

echo "Reverse number of entered digit is $rev"

or

#!/bin/bash
echo -e "enter your number:"
read num
sd=0
rev=""
while [[ $num > 0 ]]
do
sd=$(( $num % 10 ))
num=$(( $num / 10 ))
rev=$( echo ${rev}${sd} )
done
echo "reverse of num $rev"

#!/bin/bash
read -p "enter name to reverse:" name
length=echo ${#name}
for ((i = $length - 1; i >= 0; i--))
do
rev=${name:i:1}
reverse=$rev$reverse
done

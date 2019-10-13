#!bin/bash
a=1
b=2
c=4
z=$(((-b + (b*b -4*a*c))/2*a))
echo $z
#echo "Enter largest  term"
#read n
n=4000000 #upper limit
a=0
b=1
c=0
sum=0


while [ `echo "$a+$b"|bc` -le $n ]
#a=1; b=1
#n=`echo "$n-2"|bc`
#for i in `seq 1 1 $n`
do 
	c=$(echo "$a+$b" |bc)
	echo "$c"
	if [ $(echo "$c % 2"|bc) -eq 0 ]
	then
	sum=$(echo "$sum + $c"|bc)
	fi
	a=$b
	b=$c
done
echo "The sum of even number in fibonacci series whose value not exceeding $n is $sum"

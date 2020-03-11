echo "Enter the terms"
read terms
a=0
b=1
aa=0
bb=1
for i in `seq $terms`
#for (( i=0; i < $terms; i++ ))
do
	term=$a
	x=`echo "(($a + $b))"|bc`
	d=`expr "(($aa / $bb))"|bc -l`
	id=`expr "(($bb/ $aa))"|bc -l`
	term1=$d
	term2=$id
	echo "$term -> $term1 -> $term2"
	euler=`expr "$a/2"|bc -l`
	sum=0
#	if [ $euler == 0 ]
#	then
#		for j in `seq $i`
#		do
#			sum=`echo "$sum + $j"|bc`
#		        echo "$sum"
#		done
#	fi
	
	a=$b
	b=$x
	aa=$bb
	bb=$x
done



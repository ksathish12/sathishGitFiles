a<-seq(5,12,by=0.5)
sum=0
for (val in a)
{
  sum = sum+val
}

cat("Sum of Ap is",sum,"\n")
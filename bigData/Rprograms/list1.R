l1<-list(1,2,3)
l2<-list("Sunday","Monday","Tuesday")
l<-c(l1,l2)
print(l)
M=unlist(l1)
N=unlist(l2)
O=unlist(l)
print(M)
print(N)
print(O)
sum=0
for (val in M)
{
  sum=sum+val
}
cat("Sum of elements in list1 is",sum,"\n")
count=0
for(i in N)
{
  count = count+1
}
cat("The number of elements in list2 is",count,"\n")
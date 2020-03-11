sum1=0; sum2=0
for (val in seq (1,10))
{
  sum1=val*val+sum1
}
print(sum1)
for (val in seq (1,10))
{
  sum2=val+sum2
  #sum2=sum2*sum2
}
sum2=sum2*sum2
print(sum2)
sol=sum2-sum1
print(sol)
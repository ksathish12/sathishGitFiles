a<-airquality$Temp
#print(a)
max=max(a)
min=min(a)
ci=41.0
start=min
start1=min+ci
new1<-c()
new2<-c()
new3<-c()
for (i in seq(start1,max,ci))
{
  count=0
  for (j in seq(a))
  {
    if (j>=start & j<i)
    {
      count=count+1
    }
    
  }
  x=((start+i)-1)/2
  fx<-x*count
  new1[[paste0(i)]] <- x
  new2[[paste0(i)]] <- fx
  new3[[paste0(i)]] <- count
}
# print(new1)
# print(new2)
# print(new3)

sumfx<-sum(new2)
sumfreq<-sum(new3)
mean<-sumfx/sumfreq

mean2<-mean(a)

print(mean)
print(mean2)



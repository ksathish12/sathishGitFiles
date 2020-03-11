a<-VADeaths
a<-data.frame(a)
print(a)
total<-rowSums(a)
mean<-rowMeans(a)
a$Total<-total
print(a)
a$Mean<-mean
print(a)
#rm<-data.frame(a[1])
#rf<-data.frame(a[2])
#um<-data.frame(a[3])
#uf<-data.frame(a[4])
#t<-data.frame(a[5])
#m<-data.frame(a[6])
#final<-cbind(t,rm,rf,um,uf,m)
#final <- a[, c(5, 1, 2, 3, 4, 6)]
final <- a[, c(5, 1:4, 6)]
print(final)

#print(a)

#for (j in seq(1,5))
#{
#  sum<-0
#for (i in seq(1,4))
#{
#  sum<-sum+a[j,i]
  
#}
#  b<-append(sum)
 #b<-c(sum)
# print(b)
#}

#total<-data.frame(Total=c(sum))
#final=cbind(a,total)
#print(final)



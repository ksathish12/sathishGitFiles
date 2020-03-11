#a<-data.frame(dat=as.Date("2002-01-01",format="%Y-%m-%d")+0:729)
a<-data.frame(dat=as.Date("2002-01-01",format="%Y-%m-%d")+0:729)

#print(a)
# max<-aggregate(x=a$dat,by=list(month=substr(a$dat,1,7)),FUN=max)
# #max<-aggregate(a$dat~substr(a$dat,1,7),data=a,max)
# #max<-aggregate(dat~substr(a$dat,1,7),data=a,max)
# 
# #print(max)
#print(a$dat)
dummy<-aggregate(a$dat,by=list(month=substr(a$dat,6,7),year=substr(a$dat,1,4)),FUN=max)
#print(dummy)
b<-(dummy[3])
d<-format(b, "%d") 
# d<-(b[,c(1)])
#print(d)
m<-dummy[1]
y<-dummy[2]
#print(d)
final<-data.frame(m,y,d)
colnames(final)<-c("Month","Year","Days")
print(final)
# print(substring(d,9,10))


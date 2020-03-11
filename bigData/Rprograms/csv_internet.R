mypath<-"http://192.168.1.41/titanic.csv"
titanicdata<-read.csv(mypath,sep=",")
#print(titanicdata)
maledata<-subset(titanicdata,Sex=="male")
#print(nrow(maledata))
maledata<-subset(titanicdata,Sex=="male" & Age>35,select=c(Name,Age))
print(maledata[1])
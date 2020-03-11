library("reshape")
a<-airquality
#myTemp<-melt(a,id=c("Month"))
#myTemp<-cast(myTemp,Month~variable,mean,na.rm="TRUE")
#print(myTemp[,c(1,2,5)])

#another method
myTemp<-melt(a,id.vars="Month",measure.vars=c("Ozone","Temp"),na.rm="TRUE")
cast(myTemp,Month~variable,mean)
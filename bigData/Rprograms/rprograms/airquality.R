a<-airquality
#print(a)
a<-na.exclude(a)
#print(mean(a$Temp))
a$Weather<-ifelse(a$Temp > mean(a$Temp),"Hot","Cold") 
# #print(a)
# cold<-subset(a,Weather=="Cold")
# hot<-subset(a,Weather=="Hot")
# #print(hot)
# avgHot<-mean(hot$Temp)
# avgCold<-mean(cold$Temp)
# print(avgHot)
# print(avgCold)

# #Aggregrate method
# avgHot<-aggregate(a$Temp,by=list(weather=a$Weather),FUN=max,na.rm=TRUE)
# print(avgHot)

#Another Aggregate method
avg<-aggregate(Temp~Weather,data=a,mean)
print(avg)
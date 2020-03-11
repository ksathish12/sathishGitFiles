a<-airquality
#print(a)
# mi<-min(a$Temp)
# print(mi)
# ma<-max(a$Temp)
# print(ma)
# ci<-5.0
# x<-(ma-mi)/ci
# print(x)
# 
# 
# 
# mean<-c()


c<-cut(a$Temp,5)
print(c[1])
t<-table(c)
df<-data.frame(t)

#print(m1)

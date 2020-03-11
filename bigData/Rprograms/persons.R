persons<-c("m","f","m","m","f","m","f","f","f","f","m","f","f","m","f","f","m","f","f","m","m","f")
fact<-factor(persons,ordered = "TRUE")
print(summary(fact))
levels(fact)[2]<-"Male"
levels(fact)[1]<-"Female"
print(summary(fact))
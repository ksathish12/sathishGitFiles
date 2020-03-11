list1<-list(list("Sathish"),c("Tamil","English"),list("28"))
names(list1)<-c("Name","Language","Age")
#print(list1$Language[1])
cat("The first language is",list1$Language[1],"\n")
list1[4]<-list("Marital Status : Single")
print(list1)
list1[3]<-NULL
print(list1)
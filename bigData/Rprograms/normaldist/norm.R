x<-seq(-4,4,length=200)
# # x<-seq(1,4,length=200)
# a<-1/(sd(x))*sqrt((2*pi))
# b<-exp(-0.5*((x-mean(x))/sd(x))^2)
# p=a*b
# # plot(x,p,type="l",col="red")
z<-(x-mean(x))/(sd(x))
# sd(z)
l<-1/sqrt((2*pi))
m<-exp(-0.5*((z)^2))
p2<-l*m
print(p2)
plot(z,p2,type="l",col="blue")


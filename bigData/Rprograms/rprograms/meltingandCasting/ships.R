library("reshape")
library(MASS)
a<-ships
#myShip<-melt(a,id=c("type"))
#myShip<-cast(myShip,type~variable,sum)
#print(myShip[,c(1,5)])

#anothermethod
myShip<-melt(a,id.vars="type",measure.vars="incidents")
cast(myShip,type~variable,sum)
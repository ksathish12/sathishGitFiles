library("reshape")
library("dplyr")
rawdf<-read.csv("/home/sathish/Documents/rprograms/corona/2019_nCoV_data.csv")
df<-rawdf[c(4,6,7,8)]
print(head(df))
dfm<-melt(data=df,id.vars=c(1),measure.vars=c(2,3,4))
print(head(dfm))
final<-cast(dfm,formula = Country~variable,fun="sum")
head(final)

row.names(final)<-final$Country
head(final)
final1<-subset(final,select=c(2,3,4))
head(final1)

#p<-final1[order(desc(final1$Confirmed)),]
p<-final1[order(desc(final1$Confirmed)),]
head(p)

p<-p[1:10,]

barplot(t(p),beside = TRUE,col = c("Red","Blue","Green"),legend=TRUE,offset = 0.001,log="y",names.arg = rownames(p))

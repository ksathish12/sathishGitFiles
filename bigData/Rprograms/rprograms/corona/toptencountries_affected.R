data<-read.csv("/home/sathish/Documents/rprograms/corona/COVID19_line_list_data.csv")
df<-na.exclude(data[c(7,9)])
#df<-data[c(7,9)]
print(head(df))
Tcountry<-table(df$country)
print(Tcountry)
TcountryDecr<-sort(Tcountry,decreasing=TRUE)
#print(TcountryDecr)
pdf("CountriesAffected.pdf") 
barplot(TcountryDecr[1:10],col = "Red",main="Top 10 Countries Affected by Corona",ylab="No of Affected",xlab="Countries")
dev.off()


s.abb<-state.abb
#print(s)
s.area<-state.area
s.division<-state.division
s.name<-state.name
s.region<-state.region
s<-data.frame(s.abb,s.area,s.division,s.name,s.region,row.names = s.name)

names<-colnames(s)
#print(substring(names,1:3,1:3))
#colnames(s)<-c("abb","are","div","nam","reg")
#print(s)

#colnames(s)<-substring(colnames(s),3,5) # short method
new1<-c() #creating the empty vector new1

for (val in colnames(s))
{
  new<-(substring(val,3,5)) #This will create the column names with each name displaying characters from 3 to 5
  new1[[paste0(val)]] <- new #storing the previous result in the vector new1
  
}
#print(new1)
newColname<-new1 #storing the vector new1 in the variable newColname
colnames(s)<-c(newColname) #changing the existing column name with newColname
#rownames(s)<-c(s.name)
print(s)
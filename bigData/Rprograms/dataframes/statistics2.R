air<-airquality
dframe<-data.frame(table(cut(air$Temp,5)))
print(dframe)

x<-c()
new1<-c()
new2<-c()
freq<-c()
FX<-c()
lm<-c()
xsqr<-c()
fxsqr<-c()
for (val in seq(rownames(dframe)))
{
  cnum<-substring(dframe$Var1[val],2,10)
  cnum<-strsplit(unlist(cnum),"]")
  cnum<-strsplit(unlist(cnum),",")
  cnum<-strsplit(unlist(cnum)," ")
  num1<-as.vector(cnum[1],mode="numeric")
  num2<-as.vector(cnum[2],mode="numeric")
  X<-(num2+num1)/2.0
  XX<-X*X
  
  f<-as.vector(substring(dframe$Freq[val],1,16),mode="numeric")
  fx<-f*X
  fxx<-f*XX
  
  x[[paste0(val)]] <- cnum
  new1[[paste0(val)]] <- num1
  new2[[paste0(val)]] <- num2
  freq[[paste0(val)]] <- f
  FX[[paste0(val)]] <- fx
  lm[[paste0(val)]] <- X
  xsqr[[paste0(val)]] <- XX
  fxsqr[[paste0(val)]] <- fxx
  
  
  

}

sumfx<-sum(FX)
sumfxx<-sum(fxsqr)
sumf<-sum(freq)




R<-cbind(new1,new2,freq,lm,FX,xsqr,fxsqr)
colnames(R)<-c("Number1","Number2","Frequency","Mean","F*x","sqr(x)","F*x*x")
print(R)

M<-sumfx/sumf
Var<-((sumfxx/sumf)-(M*M))
sd<-sqrt(Var)
#print(M)
Mr<-mean(air$Temp)
varR<-var(air$Temp)
sdR<-sd(air$Temp)

cat("The mean of R is",Mr,".","The mean of our method is",M,"\n")

cat("The variance of R is",varR,".","The variance of our method is",Var,"\n")
cat("The SD of R is",sdR,".","The SD of our method is",sd,"\n")







# 
# new1<-c()
# new2<-c()
# 
# for (val in seq(cnum)))
# {
#   num1<-as.vector(cnum[val],mode="numeric")
#   num2<-as.vector(cnum[val],mode="numeric")
#   new1[[paste0(val)]] <- num1
#   new2[[paste0(val)]] <- num2
# 
# }
# print(new1)
# print(new2)
# 
# # cnum<-substring(dframe$Var1[1],2,10)
# # cnum<-strsplit(unlist(cnum),"]")
# # cnum<-strsplit(unlist(cnum),",")
# # cnum<-strsplit(unlist(cnum)," ")
# # 
# # # new1<-c()
# # # new2<-c()
# # # 
# # # for (val in seq(rownames(dframe)))
# # # {
# # #   num1<-as.vector(cnum[val],mode="numeric")
# # #   num2<-as.vector(cnum[val],mode="numeric")
# # #   new1[[paste0(val)]] <- num1
# # #   new2[[paste0(val)]] <- num2
# # #   
# # # }
# # # print(new1)
# # # print(new2)
# # 
# # num2<-as.vector(cnum[2],mode="numeric")
# # print(num2)
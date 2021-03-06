library(MASS)
library(ISLR)
A=data.frame(Hitters)
Str(A)
cor(A[,c(-20,-14,-15)])
sf=sample(2,nrow(A),replace=TRUE,prob=c(0.8,0.2))
trd=A[sf==1,]
tsd=A[sf==2,]
model1=lm(AtBat~.,data=trd)
model2=lm(AtBat~.-)
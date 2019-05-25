library(ISLR)
library(devtools)
library(ggbiplot)
library(psych)
library(MASS)
A=data.frame(Cars93)
sf=sample(2,nrow(A),replace=TRUE,prob=c(0.7,0.3))
trd=A[sf==1,]
tsd=A[sf==2,]
Str(A)
nums=unlist(lapply(trd,is.numeric))
B=trd[,nums==TRUE]
B1=na.omit(B)
model2=prcomp(B1)
model2
pairs.panels(model2$x)
str(model2)
plot(model2$x[,1],model2$x[,2])
ggbiplot(model2)
plot(model2)
#PCA 5 and PCA 6 is used for ploting=====
plot(model2$x[,5],model2$x[,6])
ggbiplot(model2)




#Page 41
dataset<-c(rep(0,3),rep(1,6),rep(2,6),rep(3,3),rep(4,1)) 
library("plyr")
y<-count(dataset)
print(y)
print(dataset)
mean<-sum(dataset)/length(dataset)
print(mean)
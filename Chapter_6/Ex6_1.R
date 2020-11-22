#Page 289
set<-c(152,156,160,164)
l<-print.table(combn(set,2))
mean<-function(n){
  m<-(l[1,n]+l[2,n])/2
  a<-l[1,n]
  b<-l[2,n]
  print(paste("Mean of",a,"and",b,"is",m))
}
mean(1)
mean(2)
mean(3)
mean(4)
mean(5)
mean(6)

x<-c(152,154,156,158,160,162,164)
prob<-c(1/16,2/16,3/16,4/16,3/16,2/16,1/16)
prob.dist<-cbind(x,prob)
print(prob.dist)

product<- function(i){
  k<-x[i]*prob[i]
}
mean_of_dist<-sum(product(1),product(2),product(3),product(4),product(5),product(6),product(7))
print(mean_of_dist)

func<-function(i){
  k<-x[i]*x[i]*prob[i]
}
variance<-sum(func(1),func(2),func(3),func(4),func(5),func(6),func(7))
print(variance)

sd<-sqrt(variance-(mean_of_dist**2))
print(sd)
#Page 333
n<-120
mean<-2.71
sd<-0.51
alpha<-1-0.90
k<-qnorm(alpha/2,lower.tail = FALSE)
Lower_interval<-print(mean-(((k)*(sd))/sqrt(n)))
Upper_interval<-print(mean+(((k)*(sd))/sqrt(n)))
#Page 332
n<-49
mean<-35
sd<-14
alpha<-1-0.98
k<-qnorm(alpha/2,lower.tail = FALSE)
Lower_interval<-print(mean-(((k)*(sd))/sqrt(n)))
Upper_interval<-print(mean+(((k)*(sd))/sqrt(n)))
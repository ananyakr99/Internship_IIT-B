#Page 352
n<-120
f<-69
alpha<-1-0.90
prop_of_f<-f/n
sd<-sqrt((prop_of_f)*(1-prop_of_f))
k<-qnorm(alpha/2,lower.tail = FALSE)
Lower_interval<-print(prop_of_f-(((k)*(sd))/sqrt(n)))
Upper_interval<-print(prop_of_f+(((k)*(sd))/sqrt(n)))


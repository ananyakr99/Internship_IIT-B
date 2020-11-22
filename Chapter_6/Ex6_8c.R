#Page 316
x<-102
n<-121
mean<-0.90
sd<-0.027
sample_proportion<-x/n
k<-(sample_proportion-mean)/sd
print(k)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(pnorm(k,mean=0,sd=1))

#The answer may slightly vary due to rounding off values.
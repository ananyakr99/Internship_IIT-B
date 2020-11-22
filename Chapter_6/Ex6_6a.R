#Page 303

n<-5
mean<-50
sd<-6
k<-(48-mean)/sd
print(k)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(pnorm(k,mean=0,sd=1))

#The answer may slightly vary due to rounding off values.

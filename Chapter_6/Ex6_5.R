#Page 302
n<-5
mean<-38.5
sd<-2.5
std_new<-sd/sqrt(n)
k<-(36-mean)/std_new
print(k)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(pnorm(k,mean=0,sd=1))

#The answer may slightly vary due to rounding off values.
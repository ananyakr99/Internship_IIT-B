#Page 298
n<-50
mean<-112
sd<-40
std_new<-sd/sqrt(n)
k<-(113-mean)/std_new
print(k)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(1-(pnorm(k,mean=0,sd=1)))

#The answer may slightly vary due to rounding off values.
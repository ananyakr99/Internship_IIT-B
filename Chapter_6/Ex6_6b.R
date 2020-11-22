#Page 303

n<-36
mean<-50
sd<-6
std_new<-sd/sqrt(n)
k<-(48-mean)/std_new
print(k)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(pnorm(k,mean=0,sd=1))

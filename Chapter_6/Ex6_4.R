#Page 300
n<-100
mean<-2.61
sd<-0.5
std_new<-sd/sqrt(n)
k<-(2.51-mean)/std_new
l<-(2.71-mean)/std_new
print(k)
print(l)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(l,mean=0,sd=1)-pnorm(k,mean=0,sd=1))

x=seq(k,l,length=500)
y=dnorm(x)
polygon(c(k,x,l),c(0,y,0),col="gray")
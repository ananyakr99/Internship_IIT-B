#Page 248
x=seq(-5,5,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(4.16,mean=0,sd=1)-pnorm(1.13,mean=0,sd=1))

x=seq(1.13,4.16,length=200)
y=dnorm(x)
polygon(c(1.13,x,4.16),c(0,y,0),col="gray")
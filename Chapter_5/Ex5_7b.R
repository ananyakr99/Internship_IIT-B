#Page 248
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(2.15,mean=0,sd=1)-pnorm(-5.22,mean=0,sd=1))

x=seq(-5.22,2.15,length=200)
y=dnorm(x)
polygon(c(-5.22,x,2.15),c(0,y,0),col="gray")
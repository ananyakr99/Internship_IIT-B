#Page 246
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(0.09,mean=0,sd=1)-pnorm(-2.55,mean=0,sd=1))

x=seq(-2.55,0.09,length=200)
y=dnorm(x)
polygon(c(-2.55,x,0.09),c(0,y,0),col="gray")
#Page 246
x=seq(-6,6,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(1.57,mean=0,sd=1)-pnorm(0.5,mean=0,sd=1))


x=seq(0.5,1.57,length=200)
y=dnorm(x)
polygon(c(0.5,x,1.57),c(0,y,0),col="gray")
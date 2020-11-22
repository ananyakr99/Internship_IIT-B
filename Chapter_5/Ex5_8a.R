#Page 249
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(1,mean=0,sd=1)-pnorm(-1,mean=0,sd=1))

x=seq(-1,1,length=200)
y=dnorm(x)
polygon(c(-1,x,1),c(0,y,0),col="gray")

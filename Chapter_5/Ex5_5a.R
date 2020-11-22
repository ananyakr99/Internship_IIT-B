#Page 244

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-1-(pnorm(1.60,mean=0,sd=1))
print(reqd_probability)

x=seq(4,1.5,length=200)
y=dnorm(x)
polygon(c(-4,x,1.6),c(0,y,0),col="gray")
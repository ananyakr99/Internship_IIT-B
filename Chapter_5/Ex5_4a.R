#Page 243

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
print(pnorm(1.48,mean=0,sd=1))

x=seq(-4,1.5,length=200)
y=dnorm(x)
polygon(c(-4,x,1.48),c(0,y,0),col="gray")
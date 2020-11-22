#Page 278
z<-qnorm(1-0.05,lower.tail = TRUE)
mean<-510
sd<-60
x<-mean+(z)*(sd)
print(x)

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")

x=seq(z,4,length=500)
y=dnorm(x)
polygon(c(z,x,4),c(0,y,0),col="gray")
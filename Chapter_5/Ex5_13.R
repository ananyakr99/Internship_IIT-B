#Page 272
k<-qnorm(0.025,lower.tail = FALSE)
print(k)

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")

x=seq(4,k,length=200)
y=dnorm(x)
polygon(c(4,x,k),c(0,y,0),col="gray")
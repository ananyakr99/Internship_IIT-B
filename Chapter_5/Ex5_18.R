#Page 280
mean<-29
sd<-2
alpha<-1-0.75
z1<-qnorm(1-alpha/2,lower.tail = FALSE)
z2<-qnorm(1-alpha/2,lower.tail = TRUE)
x_fast<-mean+(z1)*(sd)
x_slow<-mean+(z2)*(sd)
print(x_fast)
print(x_slow)

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")

x=seq(z1,z2,length=500)
y=dnorm(x)
polygon(c(z1,x,z2),c(0,y,0),col="gray")
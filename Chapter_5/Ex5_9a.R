#Page 256
mean<-10
sd<-2.5
k<-(14-mean)/sd
print(k)

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")
reqd_probability<-print(pnorm(k,mean=0,sd=1))

x=seq(-4,k,length=200)
y=dnorm(x)
polygon(c(-4,x,k),c(0,y,0),col="gray")
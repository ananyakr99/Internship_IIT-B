#Page 276
z<-qnorm(0.9332,lower.tail = TRUE)
mean<-10
sd<-2.5
k<-mean+(z)*(sd)
print(k)

x=seq(5,16,length=200)
y=dnorm(x,mean=10,sd=2)
plot(x,y,type="l",lwd=2,col="red")

x=seq(5,k,length=200)
y=dnorm(x,mean=10,sd=2)
polygon(c(5,x,k),c(0,y,0),col="gray")
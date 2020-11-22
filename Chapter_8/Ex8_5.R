#Page 392
mean<-8.1
mean_exp<-8.2
sd<-0.22
n<-30
alpha<-0.01
z0<-qnorm(alpha/2,lower.tail = TRUE)
z1<-qnorm(alpha/2,lower.tail = FALSE)
z<-print((mean_exp-mean)/(sd/sqrt(n)))

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-3,z0,length=500)
y=dnorm(x,mean =0,sd=1)
polygon(c(-3,x,z0),c(0,y,0),col="gray")

x=seq(z1,3,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(z1,x,3),c(0,y,0),col="gray")

points(z,0,pch=19,col="red",cex=1.5)

if(z<z1 & z>z0){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}


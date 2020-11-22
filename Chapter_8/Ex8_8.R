#Page 405
mean<-67
mean_exp<-69.4
sd<-6.1
alpha<-0.01
n<-64
z<-print((mean_exp-mean)/(sd/sqrt(n)))

p<-pnorm(Inf)-pnorm(z)
print(p)

x=seq(-3,3.5,length=100)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(z,3.5,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3.5),c(0,y,0),col="gray")
points(z,0,pch=19,col="black",cex=1.5)


if(p<alpha){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
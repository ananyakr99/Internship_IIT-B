#Page 407

mean<-7.4
mean_exp<-7.7
sd<-0.5
alpha<-0.01
n<-30
z<-print((mean_exp-mean)/(sd/sqrt(n)))

p<-2*(pnorm(Inf)-pnorm(z))
print(p)

x=seq(-5,5,length=100)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(z,5,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,5),c(0,y,0),col="gray")

x=seq(-5,-z,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-5,x,-z),c(0,y,0),col="gray")

points(z,0,pch=19,col="black",cex=1.5)


if(p<alpha){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
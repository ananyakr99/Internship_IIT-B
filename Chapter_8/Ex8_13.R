#Page 432
n<-5000
alpha<-0.05
p<-0.5255
p_0<-0.5146
q_0<-1-p_0
z<-print((p-p_0)/(sqrt((p_0*q_0)/n)))
z0<-qnorm(alpha,lower.tail=FALSE)
z1<-qnorm(alpha,lower.tail=TRUE)
print(z0)
print(z1)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-3,z1,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,z1),c(0,y,0),col="gray")

x=seq(z0,3,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(z0,x,3),c(0,y,0),col="gray")

points(z,0,pch=19,col="red",cex=1.5)

if(z>z1 & z<z0){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}

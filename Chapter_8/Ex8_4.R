#Page 390
mean<-3.5
mean_exp<-3.1
sd<-1.5
alpha<-0.05
n<-50
critical_value<-qnorm(alpha,lower.tail = TRUE)
z<-print((mean_exp-mean)/(sd/sqrt(n)))

x=seq(-4,4,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-4,critical_value,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-4,x,critical_value),c(0,y,0),col="gray")
points(z,0,pch=19,col="red",cex=1.5)

if(z<critical_value){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
#Page 507

n1<-500
n2<-100
p1<-0.67
p2<-0.80
d0<--0.05
alpha<-1-0.9
m<-sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
z<-(p1-p2-d0)/m
print(z)

z0<-qnorm(alpha,lower.tail = TRUE)
print(z0)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-3,z0,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,z0),c(0,y,0),col="gray")

points(z,0,pch=19,col="red",cex=1.5)

if(z0<z){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}

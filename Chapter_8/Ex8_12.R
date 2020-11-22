#Page 429
n<-500
soft_drink_maker<-270
competitor<-211
non_deciders<-19
alpha<-0.05
p<-soft_drink_maker/500
p_0<-0.5
q_0<-1-p_0
z<-print((p-p_0)/(sqrt((p_0*q_0)/n)))
z0<-qnorm(alpha,lower.tail=FALSE)
print(z0)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(z0,3,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(z0,x,3),c(0,y,0),col="gray")

points(z,0,pch=19,col="red",cex=1.5)

if(z0<z){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
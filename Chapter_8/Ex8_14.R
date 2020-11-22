#Page 435
n<-500
soft_drink_maker<-270
competitor<-211
non_deciders<-19
alpha<-0.05
p<-soft_drink_maker/500
p_0<-0.5
q_0<-1-p_0
z<-print((p-p_0)/(sqrt((p_0*q_0)/n)))

p<-pnorm(Inf)-pnorm(z)
print(p)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(z,3,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="gray")

points(z,0,pch=19,col="black",cex=1.5)

if(p<alpha){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
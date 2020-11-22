#Page 403
mean<-202.5
mean_exp<-199.2
sd<-19.63
alpha<-0.05
n<-85
z<-print((mean_exp-mean)/(sd/sqrt(n)))

p<-pnorm(z)-pnorm(-Inf)
print(p)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-3,z,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,z),c(0,y,0),col="gray")
points(z,0,pch=19,col="black",cex=1.5)


if(p<alpha){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}
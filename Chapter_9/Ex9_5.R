#Page 470

n1<-11
x1<-52
sd1<-12
n2<-6
x2<-46
sd2<-10
alpha<-0.005
df<-n1+n2-2
n<-(((n1-1)*(sd1**2))+((n2-1)*(sd2**2)))
d<-(n1+n2-2)
s_p_sq<-n/d

t<-(x1-x2)/(sqrt(s_p_sq*((1/n1)+(1/n2))))
t0<-qt(alpha,df)
t1<--t0
print(t)
print(t0)
print(t1)

x=seq(-4,4,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(t1,4,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(t1,x,4),c(0,y,0),col="gray")

x=seq(-4,t0,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-4,x,t0),c(0,y,0),col="gray")

points(t,0,pch=19,col="red",cex=1.5)

if(t<t1 & t>t0){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}

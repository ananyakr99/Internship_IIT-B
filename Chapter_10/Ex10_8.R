#Page 586
x<-c(2,2,6,8,10)
y<-c(0,1,2,3,3)
fit<-lm(y~x)
print(fit)
beta_0<--0.1250
beta_1<-0.3438
alpha<-0.02
find<-function(x){
  y<-c((beta_1*x)+beta_0)
}
k<-find(x)
library("Metrics")
SSE<-sse(k,y)
sum_of_x<-sum(x[1],x[2],x[3],x[4],x[5])
sum_of_x_sq<-sum(x[1]**2,x[2]**2,x[3]**2,x[4]**2,x[5]**2)
n<-length(x)
df<-n-2
SS_xx<-(sum_of_x_sq)-((1/n)*(sum_of_x)**2)
S_e<-sqrt(SSE/(n-2))
t<-beta_1/((S_e)/sqrt(SS_xx))
print(t)
t0<-qt(alpha/2,df)
t1<--t0

x=seq(-6,6,length=100)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(t1,6,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(t1,x,6),c(0,y,0),col="gray")

x=seq(-6,t0,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-6,x,t0),c(0,y,0),col="gray")


points(t,0,pch=19,col="black",cex=1.5)

if(t>t0 & t<t1){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}
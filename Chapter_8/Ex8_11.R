#Page 418
data<-c(0.021,0.019,0.023,0.020)
mean_exp<-mean(data)
mean<-0.02
sd<-sd(data)
n<-length(data)
df<-n-1
alpha<-0.01
t<-print((mean_exp-mean)/(sd/sqrt(n)))
t_a1<-print(qt(alpha/2,df))
t_a2<-print(-t_a1)

x=seq(-8,8,length=100)
y=dnorm(x,mean=0,sd=2.5)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-8,t_a1,length=100)
y=dnorm(x,mean=0,sd=2.5)
polygon(c(-8,x,t_a1),c(0,y,0),col="gray")

x=seq(t_a2,8,length=100)
y=dnorm(x,mean=0,sd=2.5)
polygon(c(t_a2,x,8),c(0,y,0),col="gray")

points(t,0,pch=17,col="red",cex=1.5)

if(t>t_a1 & t<t_a2){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}


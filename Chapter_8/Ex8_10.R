#Page 416
data<-c(155,179,175,175,161)
mean_exp<-mean(data)
mean<-179
sd<-sd(data)
n<-length(data)
df<-n-1
alpha<-0.05
t<-print((mean_exp-mean)/(sd/sqrt(n)))
t_alpha<-print(qt(alpha,df))

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(-3,t,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,t),c(0,y,0),col="gray")
points(t,0,pch=19,col="red",cex=1)

if(t_alpha>t){
  print("REJECT NULL HYPOTHESIS")
}else{
  print("ACCEPT NULL HYPOTHESIS")
}


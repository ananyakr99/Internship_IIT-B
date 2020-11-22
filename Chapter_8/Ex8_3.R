#Page 380
mean<-8
sd<-0.15
n<-5
sd_x<-sd/sqrt(n)
alpha<-0.10
z<-qnorm(alpha/2,lower.tail = FALSE)
lower_critical_value<-print(mean-(z*sd_x))
upper_critical_value<-print(mean+(z*sd_x))

x=seq(7.5,8.5,length=100)
y=dnorm(x,mean=mean,sd=sd)
plot(x,y,type="l",lwd=2,col="black")

x=seq(7.5,lower_critical_value,length=100)
y=dnorm(x,mean = mean,sd=sd)
polygon(c(7.5,x,lower_critical_value),c(0,y,0),col="gray")

x=seq(upper_critical_value,8.5,length=100)
y=dnorm(x,mean=mean,sd=sd)
polygon(c(upper_critical_value,x,8.5),c(0,y,0),col="gray")


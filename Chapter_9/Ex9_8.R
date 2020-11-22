#Page 487

car_1<-c(17,13.2,35.3,13.6,32.7,18.4,22.5,26.8,15.1)
car_2<-c(17,12.9,35.4,13.2,32.5,18.1,22.5,26.7,15.0)

diff<-c(car_1-car_2)
diff_sq<-c(diff**2)
n<-length(car_1)
d<-sum(diff)/n

t<-d/(sd/sqrt(n))
print(t)

alpha<-0.05
df<-n-1
t0<-qt(alpha,df,lower.tail = FALSE)
print(t0)

x=seq(-4,4,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(t0,4,length=500)
y=dnorm(x,mean=0,sd=1)
polygon(c(t0,x,4),c(0,y,0),col="gray")

points(t,0,pch=19,col="red",cex=1.5)

if(t<t0){
  print("ACCEPT NULL HYPOTHESIS")
}else{
  print("REJECT NULL HYPOTHESIS")
}

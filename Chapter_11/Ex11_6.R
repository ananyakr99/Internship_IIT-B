#Page 674

n1<-16
n2<-21
var1<-2.09
var2<-1.10
alpha<-0.10
df1<-n1-1
df2<-n2-1

f0<-print(qf(1-alpha/2,df1,df2,lower.tail=FALSE))
f1<-print(qf(alpha/2,df1,df2,lower.tail=FALSE))

t<-var1/var2
print(t)

x=seq(-1,4,length=1000)
y=df(x,df1,df2)
plot(x,y,type="l",lwd=2,col="black")
x=seq(-1,f0,length=50)
y=df(x,df1,df2)
polygon(c(-1,x,f0),c(0,y,0),col="gray")
x=seq(f1,4,length=50)
y=df(x,df1,df2)
polygon(c(f1,x,4),c(0,y,0),col="gray")
points(t,0,pch=19,col="red",cex=1.5)

if(t>f0 & t<f1){
  print("ACCEPT NULL HYPOTHESIS")
} else {
  print("REJECT NULL HYPOTHESIS")
}
#Page 693

t1<-c(71,72,75,80,60,65,63,78,75,73,72,65,63,69,64,71)
t2<-c(77,67,79,78,81,72,71,84,91)
t3<-c(81,79,73,71,75,84,77,67)

n1<-length(t1)
n2<-length(t2)
n3<-length(t3)

x1<-mean(t1)
x2<-mean(t2)
x3<-mean(t3)

var1<-var(t1)
var2<-var(t2)
var3<-var(t3)

x<-(x1*n1+x2*n2+x3*n3)/(n1+n2+n3)
alpha<-0.01
n<-33
K<-3
df1<-K-1
df2<-n-K

MST<-((n1*((x1-x)**2))+(n2*((x2-x)**2))+(n3*((x3-x)**2)))/(K-1)
MSE<-(((n1-1)*(var1))+((n2-1)*(var2))+((n3-1)*(var3)))/(n-K)
f0<-print(MST/MSE)

f<-qf(alpha,df1,df2,lower.tail = FALSE)
print(f)

if(f<f0){
  print("REJECT NULL HYPOTHESIS")
} else {
  print("ACCEPT NULL HYPOTHESIS")
}
x=seq(0,8,length=100)
y=df(x,10,10)
plot(x,y,type="l",lwd=2,col="black")
x=seq(f,10,length=1000)
y=df(x,10,10)
polygon(c(f,x,f),c(0,y,0),col="gray")
points(f0,0,pch=19,col="red",cex=1.5)





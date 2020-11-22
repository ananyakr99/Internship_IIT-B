#Page 690
maths<-c(2.59,3.13,2.97,2.50,2.53,3.29,2.53,3.17,2.70,3.88,2.64)
english<-c(3.64,3.19,3.15,3.78,3.03,2.61,3.20,3.30,3.54,3.25,4.00)
education<-c(4.00,3.59,2.80,2.39,3.47,3.59,3.74,3.77,3.13,3.00,3.47)
biology<-c(2.78,3.51,2.65,3.16,2.94,2.32,2.58,3.21,3.23,3.57,3.22)

print(cbind(maths,english,education,biology))

n1<-length(maths)
n2<-length(english)
n3<-length(education)
n4<-length(biology)

x1<-mean(maths)
x2<-mean(english)
x3<-mean(education)
x4<-mean(biology)

var1<-var(maths)
var2<-var(english)
var3<-var(education)
var4<-var(biology)

n<-44
K<-4

x<-(x1*n1+x2*n2+x3*n3+x4*n4)/(n1+n2+n3+n4)

MST<-((n1*((x1-x)**2))+(n2*((x2-x)**2))+(n3*((x3-x)**2))+(n4*((x4-x)**2)))/(K-1)
MSE<-(((n1-1)*(var1))+((n2-1)*(var2))+((n3-1)*(var3))+((n4-1)*(var4)))/(n-K)

f0<-print(MST/MSE)

alpha<-0.05
df1<-K-1
df2<-n-K
f<-qf(alpha,df1,df2,lower.tail = FALSE)
print(f)

if(f<f0){
  print("REJECT NULL HYPOTHESIS")
} else {
  print("ACCEPT NULL HYPOTHESIS")
}

x=seq(-1,4,length=1000)
y=df(x,df1,df2)
plot(x,y,type="l",lwd=2,col="black")

x=seq(f,4,length=50)
y=df(x,df1,df2)
polygon(c(f,x,4),c(0,y,0),col="gray")

points(f0,0,pch=18,col="red",cex=2)
#Page 573
x<-c(2,3,3,3,4,4,5,5,5,6)
y<-c(28.7,24.8,26.0,30.5,23.8,24.6,23.8,20.4,21.6,22.1)
fit<-lm(y~x)
print(fit)
beta_0<-32.83
beta_1<--2.05
find<-function(x){
  y<-c((beta_1*x)+beta_0)
}
k<-find(x)
library("Metrics")
print(sse(k,y))

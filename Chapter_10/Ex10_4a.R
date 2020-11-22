#Page 572
x<-c(2,2,6,8,10)
y<-c(0,1,2,3,3)
fit<-lm(y~x)
print(fit)
beta_0<-coef(fit)["(Intercept)"]
beta_1<-coef(fit)["x"]
find<-function(m){
  y<-c((beta_1*x)+beta_0)
}
k<-find(m)

library("Metrics")
print(sse(k,y))


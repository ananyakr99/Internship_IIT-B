#Page 610

x<-c(2,3,3,3,4,4,5,5,5,6)
y<-c(28.7,24.8,26.0,30.5,23.8,24.6,23.8,20.4,21.6,22.1)
fit <- lm(y~x)
n<-length(x)
beta_0<-32.83
beta_1<--2.05
alpha<-0.05
df<-n-2

find<-function(x){
  y<-c((beta_1*x)+beta_0)
}
k<-find(x)
library("Metrics")
SSE<-sse(k,y)
sum_of_x<-sum(x[1],x[2],x[3],x[4],x[5],x[6],x[7],x[8],x[9],x[10])
sum_of_x_sq<-sum(x[1]**2,x[2]**2,x[3]**2,x[4]**2,x[5]**2,x[6]**2,x[7]**2,x[8]**2,x[9]**2,x[10]**2)
SS_xx<-(sum_of_x_sq)-((1/n)*(sum_of_x)**2)
S_e<-sqrt(SSE/(n-2))


x_p<-3.5
y_p<-(beta_1*x_p)+beta_0
t<-qt(alpha/2,df,lower.tail = FALSE)
m<-x_p-mean(x)
lower_interval<-print(y_p-(t*S_e)*sqrt(1+(1/n)+(m**2/SS_xx)))
upper_interval<-print(y_p+(t*S_e)*sqrt(1+(1/n)+(m**2/SS_xx)))


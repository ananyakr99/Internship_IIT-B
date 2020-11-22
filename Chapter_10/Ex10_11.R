#Page 600
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
sum_of_y<-sum(y[1],y[2],y[3],y[4],y[5],y[6],y[7],y[8],y[9],y[10])
sum_of_x_sq<-sum(x[1]**2,x[2]**2,x[3]**2,x[4]**2,x[5]**2,x[6]**2,x[7]**2,x[8]**2,x[9]**2,x[10]**2)
sum_of_y_sq<-sum(y[1]**2,y[2]**2,y[3]**2,y[4]**2,y[5]**2,y[6]**2,y[7]**2,y[8]**2,y[9]**2,y[10]**2)
SS_xx<-(sum_of_x_sq)-((1/n)*(sum_of_x)**2)
SS_yy<-(sum_of_y_sq)-((1/n)*(sum_of_y)**2)
S_e<-sqrt(SSE/(n-2))
sum_of_xy<-sum(x[1]*y[1],x[2]*y[2],x[3]*y[3],x[4]*y[4],x[5]*y[5],x[6]*y[6],x[7]*y[7],x[8]*y[8],x[9]*y[9],x[10]*y[10])
SS_xy<-(sum_of_xy)-((1/n)*(sum_of_x)*(sum_of_y))

r1_sq<-print((SS_yy-SSE)/SS_yy)
r2_sq<-print((SS_xy**2)/((SS_xx)*(SS_yy)))
r3_sq<-print(beta_1*(SS_xy/SS_yy))
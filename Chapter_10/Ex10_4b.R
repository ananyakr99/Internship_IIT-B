#Page 572
x<-c(2,2,6,8,10)
y<-c(0,1,2,3,3)
sum_of_x<-sum(x[1],x[2],x[3],x[4],x[5])
sum_of_y<-sum(y[1],y[2],y[3],y[4],y[5])
sum_of_x_sq<-sum(x[1]**2,x[2]**2,x[3]**2,x[4]**2,x[5]**2)
sum_of_y_sq<-sum(y[1]**2,y[2]**2,y[3]**2,y[4]**2,y[5]**2)
n<-length(x)
SS_xx<-(sum_of_x_sq)-((1/n)*(sum_of_x)**2)
SS_yy<-(sum_of_y_sq)-((1/n)*(sum_of_y)**2)
sum_of_xy<-sum(x[1]*y[1],x[2]*y[2],x[3]*y[3],x[4]*y[4],x[5]*y[5])
SS_xy<-(sum_of_xy)-((1/n)*(sum_of_x)*(sum_of_y))
beta_1<-SS_xy/SS_xx
SSE<-print(SS_yy-((beta_1)*SS_xy))
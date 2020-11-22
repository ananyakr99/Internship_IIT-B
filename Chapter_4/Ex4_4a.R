#Page 191
total<-1000
fp<-300
sp<-200
tp<-100
los<-0

x<-fp-1
x1<-1
P_of_x<-x1/total

y<-sp-1
y1<-1
P_of_y<-y1/total

z<-tp-1
z1<-1
P_of_z<-z1/total

lose<-total-(x1+y1+z1)
l<-los-1
P_of_l<-lose/total

k<-c(x,y,z,l)
prob<-c(P_of_x,P_of_y,P_of_z,P_of_l)
prob.dist<-cbind(k,prob)
print(prob.dist)
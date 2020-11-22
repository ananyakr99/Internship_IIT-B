#Page 194
x<-c(-1,0,1,4)
prob<-c(0.2,0.5,NA,0.1)
prob.dist<-cbind(x,prob)
print(prob.dist)
a<-print(1-(prob[1]+prob[2]+prob[4]))

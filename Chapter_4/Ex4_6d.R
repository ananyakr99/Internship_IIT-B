#Page 194
x<-c(-1,0,1,4)
prob<-c(0.2,0.5,0.2,0.1)
prob.dist<-cbind(x,prob)

P_of_zero<-print(sum(prob[2],prob[3],prob[4]))
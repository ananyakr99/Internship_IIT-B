#Page 194
x<-c(-1,0,1,4)
prob<-c(0.2,0.5,0.2,0.1)
prob.dist<-cbind(x,prob)

product <- function(n){
  k<-x[n]*prob[n]
}
mean<-sum(product(1),product(2),product(3),product(4))
func<-function(n){
  l<-((x[n]-mean)**2)*(prob[n])
}
variance<-print(sum(func(1),func(2),func(3),func(4)))
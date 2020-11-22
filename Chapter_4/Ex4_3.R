#Page 190
x<-c(-2,1,2,3.5)
prob<-c(0.21,0.34,0.24,0.21)
prob.dist<-cbind(x,prob)
print(prob.dist)
product <- function(n) {
  k<-x[n]*prob[n]
}
mean<-print(sum(product(1),product(2),product(3),product(4)))

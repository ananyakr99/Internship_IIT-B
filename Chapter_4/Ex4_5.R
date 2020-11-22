#Page 192
x<-c(195,-199805)
prob<-c(99.7/100,0.03/100)
prob.dist<-cbind(x,prob)
print(prob.dist)
product <- function(n){
  k<-x[n]*prob[n]
}
mean<-print(sum(product(1),product(2)))

#The answer may slightly vary due to rounding off values.
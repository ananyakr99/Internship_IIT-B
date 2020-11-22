#Page 210
n<-5
p<-0.17
q<-1-p

func<-function(n,x){
  P<-((factorial(n)/(factorial(x)*factorial(n-x)))*(p**x)*(q**(n-x)))
}
var<-c(0,1,2,3,4,5)
prob<-c(func(5,0),func(5,1),func(5,2),func(5,3),func(5,4),func(5,5))
prob.dist<-cbind(var,prob)

product <- function(n){
  k<-var[n]*prob[n]
}
mean<-print(sum(product(1),product(2),product(3),product(4),product(5),product(6)))
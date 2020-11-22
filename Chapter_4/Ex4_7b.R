#Page 210
library("ggplot2")
n<-5
p<-0.17
q<-1-p

func<-function(n,x){
  P<-((factorial(n)/(factorial(x)*factorial(n-x)))*(p**x)*(q**(n-x)))
}
var<-c(0,1,2,3,4,5)
prob<-c(func(5,0),func(5,1),func(5,2),func(5,3),func(5,4),func(5,5))
prob.dist<-cbind(var,prob)

k<-which.max(prob)
print(var[k])

df<-data.frame(x = var, y = prob)
p <- ggplot(df,aes(x=var,after_stat(prob))) + geom_histogram(binwidth=1, fill="#69b3a2", color="#e9ecef")
print(p)





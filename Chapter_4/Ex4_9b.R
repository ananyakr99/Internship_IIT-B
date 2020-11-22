#Page 215
n<-10
p<-0.5
q<-1-p
func<-function(n,x){
  P<-((factorial(n)/(factorial(x)*factorial(n-x)))*(p**x)*(q**(n-x)))
}
reqd<-print(sum(func(10,6),func(10,7),func(10,8),func(10,9),func(10,10)))

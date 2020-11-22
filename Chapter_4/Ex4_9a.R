#Page 215
n<-10
p<-0.5
q<-1-p
func<-function(n,x){
  P<-((factorial(n)/(factorial(x)*factorial(n-x)))*(p**x)*(q**(n-x)))
}
P_of_k<-func(10,6)
print(P_of_k)
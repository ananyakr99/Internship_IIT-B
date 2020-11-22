#Page 367
alpha<-1-0.90
z<-qnorm(alpha/2,lower.tail = FALSE)
p<-0.5
E<-0.03
n<-((z**2)*p*(1-p))/(E**2)
print(ceiling(n))

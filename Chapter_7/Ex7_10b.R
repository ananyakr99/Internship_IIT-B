#Page 366
alpha<-1-0.98
E<-0.05
z<-qnorm(alpha/2,lower.tail = FALSE)
p<-0.1
n<-((z**2)*p*(1-p))/(E**2)
print(ceiling(n))

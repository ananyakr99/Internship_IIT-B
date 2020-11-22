#Page 525

alpha<-1-0.98
p1<-0.5
p2<-0.5
z<-qnorm(alpha/2,lower.tail =FALSE)
E<-0.05
n<-(z**2)*(p1*(1-p1)+p2*(1-p2))/E**2
print(n)

#The answer may slightly vary due to rounding off values.
#Page 523

alpha<-1-0.999
k<-0.025
z<-qnorm(alpha/2,lower.tail =FALSE)
E=0.01
n<-(z**2)*(k**2)/(E**2)
print(n)

#The answer may slightly vary due to rounding off values.
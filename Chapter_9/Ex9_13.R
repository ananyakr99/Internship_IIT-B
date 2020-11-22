#Page 521

alpha<-1-0.995
k1<-0.75
k2<-1.15
z<-qnorm(alpha/2,lower.tail =FALSE)
E=0.5
n<-((z**2)*(k1**2+k2**2))/(E**2)
print(n)

#The answer may slightly vary due to rounding off values.
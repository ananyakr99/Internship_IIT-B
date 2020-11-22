#Page 363
alpha<-1-0.99
sd<-1.3
E<-0.2
z<-qnorm(alpha/2,lower.tail = FALSE)
n<-print((z**2)*(sd**2)/(E**2))

#The answer may slightly vary due to rounding off values.
#Page 364
alpha<-1-0.95
z<-qnorm(alpha/2,lower.tail = FALSE)
E<-1000
sd<-4000
n<-print((z**2)*(sd**2)/(E**2))


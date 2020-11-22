#Page 503

n1<-500
n2<-100
p1<-0.67
p2<-0.80

alpha<-1-0.9
z<-qnorm(alpha/2,lower.tail = FALSE)
m<-sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
lower_interval<-print((p1-p2)-(z*m))
upper_interval<-print((p1-p2)+(z*m))

#The answer may slightly vary due to rounding off values.
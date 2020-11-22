#Page 447
n1<-174 
n2<-355
x1<-3.51 
x2<-3.24
s1<-0.51 
s2<-0.52
pe<-x1-x2
alpha<-1-0.99
z<-qnorm(alpha/2,lower.tail=FALSE)
Lower_interval<-print(pe-z*(sqrt((s1**2)/(n1))+(s2**2)/(n2)))
Upper_interval<-print(pe+z*(sqrt((s1**2)/(n1))+(s2**2)/(n2)))
#The answer may slightly vary due to rounding off values.
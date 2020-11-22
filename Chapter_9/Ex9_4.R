#Page 468

n1<-11
x1<-52
sd1<-12
n2<-6
x2<-46
sd2<-10
alpha<-0.05
df<-n1+n2-2
t<-qt(alpha/2,df)
n<-(((n1-1)*(sd1**2))+((n2-1)*(sd2**2)))
d<-(n1+n2-2)

s_p_sq<-n/d
print(s_p_sq)

lower_interval<-print((x1-x2)+t*sqrt(s_p_sq*(1/n1+1/n2)))
upper_interval<-print((x1-x2)-t*sqrt(s_p_sq*(1/n1+1/n2)))
#Page 671

df1<-13
df2<-8
alpha<-0.01
k<-qf(1-alpha,df2,df1,lower.tail = FALSE)
print(1/k)

#The answer may slightly vary due to rounding off values.
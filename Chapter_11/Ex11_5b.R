#Page 671

df1<-40
df2<-10
alpha<-0.975
k<-qf(1-alpha,df1,df2,lower.tail = FALSE)
print(1/k)


#The answer may slightly vary due to rounding off values.
#Page 343
n<-15
mean<-35
sd<-14
alpha<-1-0.95
df<-n-2
k<-qt(alpha/2,df)
Lower_interval<-print(mean+(((k)*(sd))/sqrt(n)))
Upper_interval<-print(mean-(((k)*(sd))/sqrt(n)))
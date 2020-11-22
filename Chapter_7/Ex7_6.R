#Page 344
n<-12
mean<-2.71
sd<-0.51
alpha<-1-0.90
df<-n-2
k<-qt(alpha/2,df)
Lower_interval<-print(mean+(((k)*(sd))/sqrt(n)))
Upper_interval<-print(mean-(((k)*(sd))/sqrt(n)))
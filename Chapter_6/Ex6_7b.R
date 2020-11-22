#Page 314

p<-0.38
q<-1-p
n<-900
mean<-0.38
sd<-sqrt((p*q)/n)
k<-((0.38-0.05)-mean)/sd
l<-((0.38+0.05)-mean)/sd
print(k)
print(l)
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-print(pnorm(l,mean=0,sd=1)-pnorm(k,mean=0,sd=1))

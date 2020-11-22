#Page 244

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
reqd_probability<-1-(pnorm(-1.02,mean=0,sd=1))
print(reqd_probability)
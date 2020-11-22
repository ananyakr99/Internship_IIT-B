#Page 401
alpha<-0.01
z<-qnorm(alpha/2,lower.tail = FALSE)

x=seq(-3,3,length=500)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="black")

x=seq(z,3,length=500)
y=dnorm(x,mean =0,sd=1)
polygon(c(z,x,3),c(0,y,0),col="gray")

points(z,0,pch=19,col="red",cex=1)

auc<-pnorm(Inf)-pnorm(z)
significance<-2*auc
print(significance)

#The answer may slightly vary due to rounding off values.

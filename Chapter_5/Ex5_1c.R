#Page 231
x=seq(0,1,length=200)
y=dunif(x,min=0,max=1)
plot(x,y,type="l",xlim=c(0,3),ylim=c(0,2),lwd=2,col="red",ylab="p")

x=seq(0.4,0.7,length=100)
y=dunif(x,min=0,max=1)
polygon(c(0.4,x,0.7),c(0,y,0),col="lightgray",border = NA)

l1<-qunif(0.7,min=0,max=1)
l2<-qunif(0.4,min=0,max=1)
print(l1-l2)
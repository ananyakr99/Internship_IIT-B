#Page 231
x=seq(0,1,length=200)
y=dunif(x,min=0,max=1)
plot(x,y,type="l",xlim=c(0,3),ylim=c(0,2),lwd=2,col="red",ylab="p")

x=seq(0.75,1,length=100)
y=dunif(x,min=0,max=1)
polygon(c(0.75,x,1),c(0,y,0),col="lightgray",border = NA)

full<-qunif(1,min=0,max=1)
limit<-qunif(0.75,min=0,max=1)
print(full-limit)
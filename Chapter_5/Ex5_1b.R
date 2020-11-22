#Page 231
x=seq(0,1,length=200)
y=dunif(x,min=0,max=1)
plot(x,y,type="l",xlim=c(0,3),ylim=c(0,2),lwd=2,col="red",ylab="p")

x=seq(0,0.2,length=100)
y=dunif(x,min=0,max=1)
polygon(c(0,x,0.2),c(0,y,0),col="lightgray",border = NA)

print(qunif(0.2,min=0,max=1))

#Page 509

n1<-500
n2<-100
p1<-0.67
p2<-0.80
d0<--0.05
alpha<-1-0.9
m<-sqrt((p1*(1-p1)/n1)+(p2*(1-p2)/n2))
z<-(p1-p2-d0)/m
print(z)

p<-1-(pnorm(Inf)-pnorm(z))
print(p)

if(p>alpha){
  print("ACCEPT NULL HYPOTHESIS")
} else {
  print("REJECT NULL HYPOTHESIS")
}
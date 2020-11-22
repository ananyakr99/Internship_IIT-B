#Page 599
x<-c(2,3,3,3,4,4,5,5,5,6)
y<-c(28.7,24.8,26.0,30.5,23.8,24.6,23.8,20.4,21.6,22.1)
r<-print(cor(x,y))
variability<-100*(r**2)
print(variability)
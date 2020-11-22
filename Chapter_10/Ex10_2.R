#Page 564
x<-c(2,2,6,8,10)
y<-c(0,1,2,3,3)
matrix<-cbind(x,y)
print(matrix)
plot(x, y)        
fit <- lm(y~x)
print(fit)
abline(fit,col='blue')


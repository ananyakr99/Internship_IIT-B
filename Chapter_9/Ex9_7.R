#Page 484

car_1<-c(17,13.2,35.3,13.6,32.7,18.4,22.5,26.8,15.1)
car_2<-c(17,12.9,35.4,13.2,32.5,18.1,22.5,26.7,15.0)

diff<-c(car_1-car_2)
diff_sq<-c(diff**2)
n<-length(car_1)
d<-sum(diff)/n
sd<-(sqrt(sum(diff_sq)-((1/n)*(sum(diff)**2))))/(sqrt(n-1))

df<-n-1
alpha<-0.05
t<-qt(alpha/2,df,lower.tail = FALSE)

lower_interval<-print(d-(t*sd/sqrt(n)))
upper_interval<-print(d+(t*sd/sqrt(n)))



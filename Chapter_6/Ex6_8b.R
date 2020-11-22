#Page 316
n<-121
p<-0.90
q<-1-p
mean<-p
print(mean)
std_dev<-sqrt((p*q)/n)
print(std_dev)
l<-3*std_dev
print(l)
upper_limit<-p+l
lower_limit<-p-l
print(upper_limit)
print(lower_limit)
print("Normally Distributed")
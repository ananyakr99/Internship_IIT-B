#Page 61
GPA<-c(1.90,3.00,2.53,3.71,2.12,1.76,2.71,1.39,4.00,3.33)
findvariance<-function(v){
  mean<-sum(v)/length(v)
  x<-sum((v-mean)^2)
  variance<-x/(length(v)-1)
  print(variance)
}
findvariance(GPA)
std_deviation=sd(GPA)
print(std_deviation)
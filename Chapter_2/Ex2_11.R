#Page 60
dataset_2<-c(46,37,40,33,42,36,40,47,34,45)
findvariance<-function(v){
  mean<-sum(v)/length(v)
  x<-sum((v-mean)^2)
  variance<-x/(length(v)-1)
  print(variance)
}
findvariance(dataset_2)
std_deviation=sd(dataset_2)
print(std_deviation)
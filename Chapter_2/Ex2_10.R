#Page 58
dataset_1<-c(40,38,42,40,39,39,43,40,39,40)
dataset_2<-c(46,37,40,33,42,36,40,47,34,45)
findrange=function(v){
  range=max(v)-min(v)
  print(range)
}
findrange(dataset_1)
findrange(dataset_2)

#Page 139
library("prob")
sample_space<-rolldie(2)
print(sample_space)
event<-expand.grid(x=4,y=4)
print(event)
probability<-(nrow(event)/nrow(sample_space))
print(probability)
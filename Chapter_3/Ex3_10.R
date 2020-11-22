#Page 131
library("sets")
sample_space<-c(1,2,3,4,5,6)
event_E<-sample_space[sample_space%%2==0]
print(as.set(event_E))
complement_of_E<-setdiff(sample_space,event_E)
print(as.set(complement_of_E))
event_T<-sample_space[sample_space>2]
print(as.set(event_T))
complement_of_T<-setdiff(sample_space,event_T)
print(as.set(complement_of_T))
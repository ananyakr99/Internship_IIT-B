#Page 133
library("sets")
sample_space<-c(1,2,3,4,5,6)
event_E<-sample_space[sample_space%%2==0]
print(as.set(event_E))
event_T<-sample_space[sample_space>2]
print(as.set(event_T))
intersection<-print(as.set(intersect(event_E,event_T)))
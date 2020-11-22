#Page 112
Sample_space<-c(1,2,3,4,5,6)
library("sets")
print(as.set(Sample_space))
event_1<-print(as.set(sort(Sample_space[Sample_space%%2==0])))
event_2<-print(as.set(sort(Sample_space[Sample_space>2])))

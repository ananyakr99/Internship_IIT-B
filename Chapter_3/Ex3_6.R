#Page 117
library("sets")
sample_space<-c(1,2,3,4,5,6)
Event_H<-print(as.set(sample_space[sample_space%%2==0]))
probability_of_H<-print(length(Event_H)/length(sample_space))
Event_T<-print(as.set(sample_space[sample_space>2]))
probability_of_T<-print(length(Event_T)/length(sample_space))
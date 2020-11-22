#Page 134
library("sets")
sample_space<-c(1,2,3,4,5,6)
event_E<-sample_space[sample_space%%2==0]
probability_of_E<-length(event_E)/length(sample_space)
event_T<-sample_space[sample_space>2]
probability_of_T<-length(event_T)/length(sample_space)
intersection<-print(as.set(intersect(event_E,event_T)))
Probability_of_both_events_occuring<-(length(intersection)/length(sample_space))
print(Probability_of_both_events_occuring)
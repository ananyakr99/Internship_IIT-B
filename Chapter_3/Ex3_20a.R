#Page 154
library('sets')
sample_space<-c(1,2,3,4,5,6)
event_A<-sample_space[sample_space==5]
event_B<-sample_space[(sample_space%%2)!=0]
Intersection<-intersect(event_A,event_B)
print(as.set(event_A))
print(as.set(event_B))
print(as.set(Intersection))
probability_of_intersection<-(length(Intersection)/length(sample_space))
probability_of_event_B<-(length(event_B)/length(sample_space))
reqd_probability<-probability_of_intersection/probability_of_event_B
print(reqd_probability)
#Page 139
library("prob")
sample_space<-rolldie(2)
print(sample_space)
Total_possibilitites<-nrow(sample_space)
num_Event_A<-6
num_Event_B<-6
num_intersection<-1
P_Event_A<-print(num_Event_A/Total_possibilitites)
P_Event_B<-print(num_Event_B/Total_possibilitites)
P_Intersection<-print(num_intersection/Total_possibilitites)
reqd_probability<-print((P_Event_A+P_Event_B)-P_Intersection)
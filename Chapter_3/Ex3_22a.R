#Page 158
h_o<-0.09
h_not_o<-0.11
not_h_o<-0.02
not_h_not_o<-0.78
given_data<-matrix(c(h_o,h_not_o,not_h_o,not_h_not_o),ncol=2,byrow=TRUE)
colnames(given_data)<-c("Overweight","Not Overweight")
rownames(given_data)<-c("Hypertension","No Hypertension")
given_data<-as.table(given_data)
print(given_data)
reqd_probability<-print(h_o/(h_o+not_h_o))
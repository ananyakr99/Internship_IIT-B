#Page 186
library("sets")
library("ggplot2")
sample_space<-c('hh','ht','th','tt')
Event_zero_heads<-as.set(c('tt'))
Event_one_head<-as.set(c('ht','th'))
Event_two_heads<-as.set(c('hh'))

x<-c(0,1,2)
Prob<-c((length(Event_zero_heads)/length(sample_space)),(length(Event_one_head)/length(sample_space)),(length(Event_two_heads)/length(sample_space)))
prob.dist<-cbind(x,Prob)
print(prob.dist)

df<-data.frame(x = x, y = Prob)
p <- ggplot(df,aes(x=x,after_stat(Prob))) + geom_histogram(binwidth=1, fill="#69b3a2", color="#e9ecef")
print(p)

reqd_probability<-sum(Prob[2],Prob[3])
print(reqd_probability)


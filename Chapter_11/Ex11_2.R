#Page 655

alpha<-0.01

assumed_dist<-c(0.743,0.216,0.012,0.012,0.008,0.009)
observed_freq<-c(1732,538,32,42,133,23)
expected_freq<-c(2500*assumed_dist)
print(cbind(assumed_dist,observed_freq,expected_freq))

test<-function(i){
  test<-(((observed_freq[i]-expected_freq[i])**2)/(expected_freq[i]))
}
chisq<-sum(test(1),test(2),test(3),test(4),test(5),test(6))
print(chisq)


df<-length(assumed_dist)-1

crit_val<-print(qchisq(alpha,df,lower.tail = FALSE))

if(crit_val<chisq){
  print("REJECT NULL HYPOTHESIS")
} else {
  print("ACCEPT NULL HYPOTHESIS")
}

x=seq(10,35,length=1000)
y=dchisq(x,df)
plot(x,y,type="l",lwd=2,col="black")

x=seq(crit_val,35,length=50)
y=dchisq(x,df)
polygon(c(crit_val,x,35),c(0,y,0),col="gray")

points(chisq,0,pch=19,col="red",cex=1.5)
#Page 640
col1<-c(35,6)
col2<-c(12,24)
col3<-c(5,18)
n<-100
R_T<-c(col1[1]+col2[1]+col3[1],col1[2]+col2[2]+col3[2])
C_T<-c(sum(col1),sum(col2),sum(col3))

alpha<-0.01
df<-(length(R_T)-1)*(length(C_T)-1)

find_E<-function(i,k){
  E<-(R_T[i]*C_T[k])/n
}
test_col1<-function(m,i,k){
  test<-((col1[m]-find_E(i,k))**2)/find_E(i,k)
}
test_col2<-function(m,i,k){
  test<-((col2[m]-find_E(i,k))**2)/find_E(i,k)
}
test_col3<-function(m,i,k){
  test<-((col3[m]-find_E(i,k))**2)/find_E(i,k)
}

chisq<-sum(test_col1(1,1,1),test_col1(2,2,1),test_col2(1,1,2),test_col2(2,2,2),test_col3(1,1,3),test_col3(2,2,3))
print(chisq)

crit_val<-print(qchisq(alpha,df,lower.tail = FALSE))

if(crit_val<chisq){
  print("REJECT NULL HYPOTHESIS")
} else {
  print("ACCEPT NULL HYPOTHESIS")
}

x=seq(7,33,length=100)
y=dchisq(x,df)
plot(x,y,type="l",lwd=2,col="black")

x=seq(crit_val,35,length=50)
y=dchisq(x,df)
polygon(c(crit_val,x,35),c(0,y,0),col="gray")

points(chisq,0,pch=19,col="red",cex=1.5)

#Page 79
mean<-2.70
sd<-0.50
z1<--0.62
z2<-1.28

findGPA<-function(z){
  GPA<-mean+(sd)*(z)
  print(GPA)
}

findGPA(z1)
findGPA(z2)


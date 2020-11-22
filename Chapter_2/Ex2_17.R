#Page 78
data<-c(1.90,3.00,2.53,3.71,2.12,1.76,2.71,1.39,4.00,3.33)
mean<-mean(data)
sd<-sd(data)
zscores<-function(v){
  for(x in v){
    z<-((x-mean(data))/sd(data))
    print(z)
  }
}
zscores(data)

#The answer may slightly vary due to rounding off values.
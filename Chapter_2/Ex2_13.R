#Page 70
GPA<-c(1.90,3.00,2.53,3.71,2.12,1.76,2.71,1.39,4.00,3.33)
k<-sort(GPA)
print(k)
index<-match(c(3.33),k)
print(index)
percentile=(index/length(GPA))*100
print(percentile)
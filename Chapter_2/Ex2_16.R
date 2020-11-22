#Page 75
GPA<-c(1.90,3.00,2.53,3.71,2.12,1.76,2.71,1.39,4.00,3.33)
quartile_2<-median(GPA)
lower_subset<-GPA[GPA<median(GPA)]
upper_subset<-GPA[GPA>median(GPA)]
quartile_1<-median(lower_subset)
quartile_3<-median(upper_subset)
print(min(GPA))
print(quartile_1)
print(quartile_2)
print(quartile_3)
print(max(GPA))
boxplot(GPA)
IQR<-print(quartile_3-quartile_1)


#Page 166
no_of_black_marbles<-7
no_of_white_marbles<-3
total_marbles<-no_of_white_marbles+no_of_black_marbles

P_first_white<-no_of_white_marbles/total_marbles
P_second_white<-no_of_white_marbles/(total_marbles-1)

P_both_white<-P_first_white*P_second_white

reqd_probability<-print(1-P_both_white)


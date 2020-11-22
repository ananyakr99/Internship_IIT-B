#Page 166
no_of_black_marbles<-7
no_of_white_marbles<-3
total_marbles<-no_of_white_marbles+no_of_black_marbles
P_first_black<-no_of_black_marbles/total_marbles
P_second_black<-(no_of_black_marbles-1)/(total_marbles-1)
probability_both_black<-print(P_first_black*P_second_black)

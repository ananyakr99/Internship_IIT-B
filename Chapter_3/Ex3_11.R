#Page 132
Event_O<-c('tails','tails','tails','tails','tails')
print(Event_O)
number_of_tosses<-5
possible_outcomes<-2
Total_outcomes<-possible_outcomes^number_of_tosses
Probability_of_all_tails<-1/Total_outcomes
print(Probability_of_all_tails)
Probability_of_atleast_one_head<-1-Probability_of_all_tails
print(Probability_of_atleast_one_head)
print(Probability_of_atleast_one_head*100)

#The answer may slightly vary due to rounding off values.
library(e1071)
?naiveBayes
data("CO2")
CO2_df=as.data.frame(CO2)
repeating_sequence=rep.int(seq_len(nrow(CO2_df)), CO2_df$uptake)
CO2_dataset=CO2_df[repeating_sequence,]
CO2_dataset$uptake=NULL
Naive_Bayes_Model=naiveBayes(Treatment ~., data=CO2_dataset)
Naive_Bayes_Model
NB_Predictions=predict(Naive_Bayes_Model,CO2_dataset)
table(NB_Predictions,CO2_dataset$Treatment)

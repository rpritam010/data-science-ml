forest_data = read.csv("C:/Users/PRITAM RAJ/Downloads/forestfires.csv",header = FALSE)

colnames(forest_data)=c("X","Y","month","day","FFMC","DMC","DC","ISI","temp","RH","wind","rain","area
")

tail(forest_data)

names(forest_data)

head(forest_data)


typeof(forest_data$X)

typeof(forest_data$Y)

typeof(forest_data$month)

typeof(forest_data$day)

typeof(forest_data$FFMC)

typeof(forest_data$DMC)

typeof(forest_data$DC)

typeof(forest_data$ISI)

typeof(forest_data$temp)

typeof(forest_data$RH)

typeof(forest_data$wind)

typeof(forest_data$rain)

typeof(forest_data$`area`)


class(forest_data$X)

class(forest_data$Y)

class(forest_data$month)

class(forest_data$day)

class(forest_data$FFMC)

class(forest_data$DMC)

class(forest_data$DC)

class(forest_data$ISI)

class(forest_data$temp)

class(forest_data$RH)

class(forest_data$wind)

class(forest_data$rain)

class(forest_data$`area`)


pairs(forest_data)


#hist(forest_data$X,col = rainbow(6))

#hist(forest_data$Y,col = rainbow(6))

#hist(forest_data$month,col = rainbow(6))

#hist(forest_data$day)

#hist(forest_data$FFMC,col = rainbow(6))

#hist(forest_data$DMC,col = rainbow(6))

#hist(forest_data$DC,col = rainbow(6))

#hist(forest_data$ISI,col = rainbow(6))

#hist(forest_data$temp,col = rainbow(6))

#hist(forest_data$RH)

#hist(forest_data$wind)

#hist(forest_data$rain)

#hist(forest_data$`area`)




#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(forest_data$month,
                     SplitRatio = .75, group = NULL)


training_set = subset(forest_data,
                      split ==TRUE)

test_set = subset(forest_data,split==FALSE)

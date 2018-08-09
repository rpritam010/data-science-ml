abalone_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data",header = FALSE
                        )
colnames(abalone_data)=c("Sex","Length","Diameter","Height","Whole weight","Shucked weight","Viscera weight","Shell weight","Rings")

names(abalone_data)

tail(abalone_data)

head(abalone_data)
summary(abalone_data)

typeof(abalone_data$Sex)

typeof(abalone_data$Length)

typeof(abalone_data$Diameter)

typeof(abalone_data$Height)

typeof(abalone_data$`Whole weight`)

typeof(abalone_data$`Shucked weight`)

typeof(abalone_data$`Viscera weight`)

typeof(abalone_data$`Shell weight`)

typeof(abalone_data$Rings)


class(abalone_data$Sex)

class(abalone_data$Length)

class(abalone_data$Diameter)

class(abalone_data$Height)

class(abalone_data$`Whole weight`)

class(abalone_data$`Shucked weight`)

class(abalone_data$`Viscera weight`)

class(abalone_data$`Shell weight`)

class(abalone_data$Rings)


pairs(abalone_data)


hist(abalone_data$Sex)

hist(abalone_data$Length)

hist(abalone_data$Diameter)

hist(abalone_data$Height)

hist(abalone_data$`Whole weight`)

hist(abalone_data$`Shucked weight`)

hist(abalone_data$`Viscera weight`)

hist(abalone_data$`Shell weight`)

hist(abalone_data$Rings)


#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(abalone_data$Length,
                     SplitRatio = .75, group = NULL)


training_set = subset(abalone_data,
                      split ==TRUE)

test_set = subset(abalone_data,split==FALSE)

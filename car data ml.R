car_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/car/car.data",header = FALSE)

colnames(car_data)=c("class","buying","maint","doors","persons","lug_boot","safety")

head(car_data)


tail(car_data)

summary(car_data)


typeof(car_data$class)

typeof(car_data$buying)

typeof(car_data$maint)

typeof(car_data$doors)

typeof(car_data$persons)

typeof(car_data$lug_boot)

typeof(car_data$safety)


class(car_data$class)

class(car_data$buying)

class(car_data$maint)

class(car_data$doors)

class(car_data$persons)

class(car_data$lug_boot)

class(car_data$safety)


is.na(car_data$class)

is.na(car_data$buying)

is.na(car_data$maint)

is.na(car_data$doors)

is.na(car_data$persons)

is.na(car_data$lug_boot)

is.na(car_data$safety)

names(car_data)

pairs(car_data)



#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(car_data$class,
                     SplitRatio = .75, group = NULL)


training_set = subset(car_data,
                      split ==TRUE)

test_set = subset(car_data,split==FALSE)


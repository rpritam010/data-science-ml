adult_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data",header = FALSE)

colnames(adult_data)=c("age","workclass","fnlwgt","education","education-num","marital-status","occupation","relationship","race","sex","capital-gain","capital-loss","hours-per-week","native-country","class")


head(adult_data)

tail(adult_data)

summary(adult_data)

typeof(adult_data$age)

typeof(adult_data$workclass)

typeof(adult_data$fnlwgt)

typeof(adult_data$education)

typeof(adult_data$`education-num`)

typeof(adult_data$`marital-status`)

typeof(adult_data$occupation)

typeof(adult_data$relationship)

typeof(adult_data$race)

typeof(adult_data$sex)

typeof(adult_data$`capital-gain`)

typeof(adult_data$`capital-loss`)

typeof(adult_data$`hours-per-week`)

typeof(adult_data$`native-country`)


typeof(adult_data$class)

class(adult_data$age)

class(adult_data$workclass)

class(adult_data$fnlwgt)

class(adult_data$education)

class(adult_data$`education-num`)

class(adult_data$`marital-status`)

class(adult_data$occupation)

class(adult_data$relationship)

class(adult_data$race)

class(adult_data$sex)

class(adult_data$`capital-gain`)

class(adult_data$`capital-loss`)

class(adult_data$`hours-per-week`)

class(adult_data$`native-country`)

class(adult_data$class)

is.na(adult_data$age)

is.na(adult_data$workclass)

is.na(adult_data$education)

is.na(adult_data$`education-num`)

is.na(adult_data$`marital-status`)

is.na(adult_data$occupation)

is.na(adult_data$relationship)

is.na(adult_data$race)

is.na(adult_data$sex)

is.na(adult_data$`capital-gain`)

is.na(adult_data$`capital-loss`)

is.na(adult_data$`hours-per-week`)

is.na(adult_data$`native-country`)

is.na(adult_data$class)


names(adult_data)


pairs(adult_data)

pairs(adult_data,col = rainbow(6))

hist(adult_data$age,col = rainbow(7))

hist(adult_data$workclass,col = rainbow(7))

hist(adult_data$education,col = rainbow(7))

hist(adult_data$`education-num`col = rainbow(7))

hist(adult_data$`marital-status`,col = rainbow(7))

hist(adult_data$occupation,col = rainbow(7))

hist(adult_data$relationship,col = rainbow(7))

hist(adult_data$race,col = rainbow(7))

hist(adult_data$sex,col = rainbow(7))

hist(adult_data$`capital-gain`,col = rainbow(7))

hist(adult_data$`capital-loss`,col = rainbow(7))

hist(adult_data$`hours-per-week`,col = rainbow(7))

hist(adult_data$`native-country`,col = rainbow(7))

hist(adult_data$class,col = rainbow(7))


#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(adult_data$class,
                     SplitRatio = .75, group = NULL)


training_set = subset(adult_data,
                      split ==TRUE)

test_set = subset(adult_data,split==FALSE)



#glm=general linear model(glm)
names(adult_data)

adult_model = glm(formula = training_set$age ~ training_set$workclass + training_set$fnlwgt +  training_set$education + training_set$`education-num` + training_set$`marital-status` + training_set$occupation + training_set$relationship + training_set$race + training_set$sex + training_set$`capital-gain` + training_set$`capital-loss` + training_set$`hours-per-week` + training_set$`native-country` + training_set$class,
                    family = gaussian,
                    data = training_set)

summary(adult_model)

prediction = predict(adult_model,type = 'response',
                     newdata = test_set[1:2])
prediction
prediction = ifelse(prediction>0.5,1,0)

report = cbind(training_set$`capital-loss`,prediction)

report


hist(report,col = rainbow(6))





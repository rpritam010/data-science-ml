iris_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
                     header = F)

colnames(iris_data)=c("sepal length in cm","sepal width in cm","petal length in cm","petal width in cm","Species")
iris_data


head(iris_data)


tail(iris_data)


summary(iris_data)


typeof(iris_data$`sepal length in cm`)


typeof(iris_data$`sepal width in cm`)


typeof(iris_data$`petal length in cm`)


typeof(iris_data$`petal width in cm`)


typeof(iris_data$Species)


class(iris_data$`sepal length in cm`)


class(iris_data$`sepal width in cm`)


class(iris_data$`petal length in cm`)


class(iris_data$`petal width in cm`)


class(iris_data$Species)


is.na(iris_data$`sepal length in cm`)


is.na(iris_data$`sepal width in cm`)

is.na(iris_data$`petal length in cm`)


is.na(iris_data$`petal width in cm`)

is.na(iris_data$Species)


names(iris_data)


pairs(iris_data)


pairs(iris_data,col = rainbow(7))


hist(iris_data$`sepal length in cm`,col = rainbow(7))

hist(iris_data$`sepal width in cm`,col = rainbow(5))

hist(iris_data$`petal length in cm`,col = rainbow(4))

hist(iris_data$`petal width in cm`,col = rainbow(6))

#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(iris_data$Species,
                     SplitRatio = .75, group = NULL)


training_set = subset(iris_data,
                      split ==TRUE)

test_set = subset(iris_data,split==FALSE)




#logistic regression


#glm=general linear model(glm)
names(iris_data)

iris_model = glm(formula = training_set$`sepal length in cm` ~ training_set$`sepal width in cm`+ training_set$`petal length in cm` +  training_set$`petal width in cm`,
                   family = gaussian,
                   data = training_set)

summary(iris_model)

prediction = predict(iris_model,type = 'response',
                     newdata = test_set[1:2])
prediction
prediction = ifelse(prediction>0.5,1,0)

report = cbind(training_set$`sepal length in cm`,prediction)

report


hist(report,col = rainbow(6))


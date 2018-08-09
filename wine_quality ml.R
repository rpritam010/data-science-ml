wine_quality = read.csv("C:/Users/PRITAM RAJ/Downloads/winequality-red.csv",header = FALSE)

colnames(wine_quality)=c("fixed acidity","volatile acidity","citric acid","residual sugar","chlorides","free sulfur dioxide","total sulfur dioxide","density","pH","sulphates","alcohol Output variable","quality")

tail(wine_quality)

head(wine_quality)

summary(wine_quality)

typeof(wine_quality$`fixed acidity`)

typeof(wine_quality$`volatile acidity`)

typeof(wine_quality$`citric acid`)

typeof(wine_quality$`residual sugar`)

typeof(wine_quality$chlorides)

typeof(wine_quality$`free sulfur dioxide`)

typeof(wine_quality$`total sulfur dioxide`)

typeof(wine_quality$density)

typeof(wine_quality$pH)

typeof(wine_quality$sulphates)

typeof(wine_quality$`alcohol Output variable`)

typeof(wine_quality$quality)


class(wine_quality$`fixed acidity`)

class(wine_quality$`volatile acidity`)

class(wine_quality$`citric acid`)

class(wine_quality$`residual sugar`)

class(wine_quality$chlorides)

class(wine_quality$`free sulfur dioxide`)

class(wine_quality$`total sulfur dioxide`)

class(wine_quality$density)

class(wine_quality$pH)

class(wine_quality$sulphates)

class(wine_quality$`alcohol Output variable`)

class(wine_quality$quality)


pairs(wine_quality)

names(wine_quality)


hist(wine_quality$`fixed acidity`)

hist(wine_quality$`volatile acidity`)

hist(wine_quality$`citric acid`)

hist(wine_quality$`residual sugar`)

hist(wine_quality$chlorides)

hist(wine_quality$`free sulfur dioxide`)

hist(wine_quality$`total sulfur dioxide`)

hist(wine_quality$density)

hist(wine_quality$pH)

hist(wine_quality$sulphates)

hist(wine_quality$`alcohol Output variable`)

hist(wine_quality$quality)



#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(wine_quality$`fixed acidity`,
                     SplitRatio = .75, group = NULL)


training_set = subset(wine_quality,
                      split ==TRUE)

test_set = subset(wine_quality,split==FALSE)


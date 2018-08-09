wine_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data",header = F)

colnames(wine_data)=c("type","Alcohol","Malic_acid","Ash","Alcalinity_of_ash","Magnesium","Total_phenols","Flavanoids","Nonflavanoid_phenols","Proanthocyanins","Color_intensity","Hue","OD280/OD315_of_diluted_wines","Proline")

head(wine_data)

tail(wine_data)

summary(wine_data)


typeof(wine_data$Alcohol)

typeof(wine_data$Malic_acid)

typeof(wine_data$type)

typeof(wine_data$Ash)

typeof(wine_data$Alcalinity_of_ash)

typeof(wine_data$Magnesium)

typeof(wine_data$Total_phenols)

typeof(wine_data$Flavanoids)

typeof(wine_data$Nonflavanoid_phenols)

typeof(wine_data$Proanthocyanins)

typeof(wine_data$Color_intensity)

typeof(wine_data$Hue)

typeof(wine_data$`OD280/OD315_of_diluted_wines`)

typeof(wine_data$Proline)

class(wine_data$Alcohol)

class(wine_data$Malic_acid)

class(wine_data$type)

class(wine_data$Ash)

class(wine_data$Alcalinity_of_ash)

class(wine_data$Magnesium)

class(wine_data$Total_phenols)

class(wine_data$Flavanoids)

class(wine_data$Nonflavanoid_phenols)

class(wine_data$Proanthocyanins)

class(wine_data$Color_intensity)

class(wine_data$Hue)

class(wine_data$`OD280/OD315_of_diluted_wines`)

class(wine_data$Proline)


is.na(wine_data$Alcohol)

is.na(wine_data$Malic_acid)

is.na(wine_data$type)

is.na(wine_data$Ash)

is.na(wine_data$Alcalinity_of_ash)

is.na(wine_data$Magnesium)

is.na(wine_data$Total_phenols)

is.na(wine_data$Flavanoids)

is.na(wine_data$Nonflavanoid_phenols)

is.na(wine_data$Proanthocyanins)

is.na(wine_data$Color_intensity)

is.na(wine_data$Hue)

is.na(wine_data$`OD280/OD315_of_diluted_wines`)

is.na(wine_data$Proline)


names(wine_data)


pairs(wine_data)


hist(wine_data$Alcohol,col = rainbow(6))

hist(wine_data$Malic_acid,col = rainbow(6))

hist(wine_data$type,col = rainbow(6))

hist(wine_data$Ash,col = rainbow(6))

hist(wine_data$Alcalinity_of_ash,col = rainbow(6))

hist(wine_data$Magnesium,col = rainbow(6))

hist(wine_data$Total_phenols,col = rainbow(6))

hist(wine_data$Flavanoids,col = rainbow(6))

hist(wine_data$Nonflavanoid_phenols,col = rainbow(6))

hist(wine_data$Proanthocyanins,col = rainbow(6))

hist(wine_data$Color_intensity,col = rainbow(6))

hist(wine_data$Hue,col = rainbow(6))

hist(wine_data$`OD280/OD315_of_diluted_wines`,col = rainbow(6))

hist(wine_data$Proline,col = rainbow(6))



#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(wine_data$Ash,
                     SplitRatio = .75, group = NULL)


training_set = subset(wine_data,
                      split ==TRUE)

test_set = subset(wine_data,split==FALSE)


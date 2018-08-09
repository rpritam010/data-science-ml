bcancer_data = read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/breast-cancer-wisconsin.data",header = FALSE)

colnames(bcancer_data)=c("Sample code number","Clump Thickness","Uniformity of Cell Size","Uniformity of Cell Shape","Marginal Adhesion","Single Epithelial Cell Size","Bare Nuclei","Bland Chromatin","Normal Nucleoli","Mitoses","Class")


head(bcancer_data)


tail(bcancer_data)

summary(bcancer_data)

typeof(bcancer_data$`Sample code number`)

typeof(bcancer_data$`Clump Thickness`)

typeof(bcancer_data$`Uniformity of Cell Size`)

typeof(bcancer_data$`Marginal Adhesion`)

typeof(bcancer_data$`Single Epithelial Cell Size`)

typeof(bcancer_data$`Bare Nuclei`)

typeof(bcancer_data$`Bland Chromatin`)

typeof(bcancer_data$`Normal Nucleoli`)


typeof(bcancer_data$Mitoses)

typeof(bcancer_data$Class)



class(bcancer_data$`Sample code number`)

class(bcancer_data$`Clump Thickness`)

class(bcancer_data$`Uniformity of Cell Size`)

class(bcancer_data$`Marginal Adhesion`)

class(bcancer_data$`Single Epithelial Cell Size`)

class(bcancer_data$`Bare Nuclei`)

class(bcancer_data$`Bland Chromatin`)

class(bcancer_data$`Normal Nucleoli`)

class(bcancer_data$Mitoses)

class(bcancer_data$Class)


is.na(bcancer_data$`Sample code number`)

is.na(bcancer_data$`Clump Thickness`)

is.na(bcancer_data$`Uniformity of Cell Size`)

is.na(bcancer_data$`Marginal Adhesion`)

is.na(bcancer_data$`Single Epithelial Cell Size`)

is.na(bcancer_data$`Bare Nuclei`)

is.na(bcancer_data$`Bland Chromatin`)

is.na(bcancer_data$`Normal Nucleoli`)

is.na(bcancer_data$Mitoses)

is.na(bcancer_data$Class)


pairs(bcancer_data)

names(bcancer_data)


hist(bcancer_data$`Sample code number`,col = rainbow(6))

hist(bcancer_data$`Clump Thickness`,col = rainbow(6))

hist(bcancer_data$`Uniformity of Cell Size`,col = rainbow(6))

hist(bcancer_data$`Marginal Adhesion`,col = rainbow(6))

hist(bcancer_data$`Single Epithelial Cell Size`,col = rainbow(6))

hist(bcancer_data$`Bare Nuclei`,col = rainbow(6))

#hist(bcancer_data$`Bland Chromatin`,col = rainbow(6))

hist(bcancer_data$`Normal Nucleoli`,col = rainbow(6))


hist(bcancer_data$Mitoses,col = rainbow(6))

hist(bcancer_data$Class,col = rainbow(6))



#Machine Learning 
#SPLITING THE DATASET INTO THE TRANNING testset

library(caTools)


set.seed(123)


#sample.split( Y,
#SplitRatio = 2/3,
#group = NULL )


split = sample.split(bcancer_data$Class,
                     SplitRatio = .75, group = NULL)


training_set = subset(bcancer_data,
                      split ==TRUE)

test_set = subset(bcancer_data,split==FALSE)




#glm=general linear model(glm)
names(bcancer_data)

bcancer_model = glm(formula = training_set$`Sample code number` ~ training_set$`Clump Thickness`+ training_set$`Uniformity of Cell Size` +  training_set$`Uniformity of Cell Shape` + training_set$`Marginal Adhesion` + training_set$`Single Epithelial Cell Size` + training_set$`Bare Nuclei` + training_set$`Bland Chromatin` + training_set$`Normal Nucleoli` + training_set$Mitoses + training_set$Class,
                 family = gaussian,
                 data = training_set)

summary(bcancer_model)

prediction = predict(bcancer_model,type = 'response',
                     newdata = test_set[1:2])
prediction
prediction = ifelse(prediction>0.5,1,0)

report = cbind(training_set$`sepal length in cm`,prediction)

report


hist(report,col = rainbow(6))

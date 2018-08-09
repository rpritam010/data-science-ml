dataset = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/R programming for Data Science/Datasets/Churn_Modelling.csv")
dataset = dataset[4:14]
dataset$Gender = as.numeric(factor(dataset$Gender,
       levels = c('Female','Male'),
       labels = c(1,2)))

dataset


dataset$Geography= as.numeric(factor(dataset$Geography,
                               levels = c("France",
                                           "Spain",
                                          "Germany"),
                               labels = c(1,2,3)))
dataset



summary(dataset)


class(dataset)



#library(dummies)

#dataset = dummy.data.frame(dataset,sep="")

library(caTools)

set.seed(123)


split = sample.split(dataset$Exited,
                     SplitRatio = .75)


training_set = subset(dataset,
                      split ==TRUE)

test_set = subset(dataset,split==FALSE)



class(training_set)
class(test_set)

#features_scaling
training_set[,1:10]=scale(training_set[,1:10])
test_set[,1:10]=scale(test_set[,1:10])




library(h2o)

h2o.init(nthreads = -1)

ann_model = h2o.deeplearning(y = 'Exited',
                         training_frame = as.h2o(training_set),
                         activation = 'Rectifier',
                         hidden = c(5,5),
                         epochs = 20,
                         train_samples_per_iteration = -2)
ann_model
help(h2o.deeplearning)
??h2o.deeplearning

pre = predict(ann_model,as.h2o(test_set[,1:10]))

pre

pre=pre>0.5


pre=as.data.frame(pre)

class(test_set$Exited)


#pre=ifelse(pre>0.5,1,0)
#pre

report = cbind(test_set$Exited,pre)

report
barplot(report$`test_set$Exited`,report$predict)


# Predicting the Test set results
y_pred = h2o.predict(model, newdata = as.h2o(test_set[,1:10]))
y_pred = (y_pred > 0.5)
y_pred = as.vector(y_pred)

# Making the Confusion Matrix
cm = table(test_set[, 11], y_pred)
cm
# accuracy depends upon cm(confussion-matrix)
accuracy = (1906+243)/(1906+85+266+243)
accuracy
# h2o.shutdown()
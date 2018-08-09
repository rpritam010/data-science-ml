train_data = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/Project/train.csv")

test_data = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/Project/test.csv")

train_data=train_data[,c(2,3,5,6)]

test_data=test_data[,c(2,4,5)]

train_data$Sex = as.numeric(factor(train_data$Sex,
                                   levels = c('female','male'),
                                   labels = c(1,2)))


summary(train_data)

class(train_data)



test_data$Sex = as.numeric(factor(test_data$Sex,
                                   levels = c('female','male'),
                                   labels = c(1,2)))





library(h2o)

h2o.init(nthreads = -1)

ann_model = h2o.deeplearning(y = 'Survived',
                             training_frame = as.h2o(train_data),
                             activation = 'Rectifier',
                             hidden = c(5,5),
                             epochs = 20,
                             train_samples_per_iteration = -2)
ann_model
summary(ann_model)


pre = predict(ann_model,as.h2o(test_data))


pre


pre=pre>0.5


pre=as.vector(pre)

class(pre)

report = cbind(test_data,pre)

report
hist(pre,col = rainbow(3))
pre = as.factor(pre)

# # Predicting the Test set results
# y_pred = h2o.predict(model,newdata = as.h2o(test_data))
# y_pred = (y_pred > 0.5)
# y_pred = as.vector(y_pred)

# Making the Confusion Matrix
cm = table(test_data, y_pred)
cm

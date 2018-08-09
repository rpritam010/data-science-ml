train_data_data = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/Project/train_data.csv")

test_data = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/Project/test.csv")

train_data_data=train_data_data[,c(2,3,5,6)]

test_data=test_data[,c(2,4,5)]

train_data_data$Sex = as.numeric(factor(train_data_data$Sex,
                                   levels = c('female','male'),
                                   labels = c(1,2)))


summary(train_data_data)

class(train_data_data)



test_data$Sex = as.numeric(factor(test_data$Sex,
                                  levels = c('female','male'),
                                  labels = c(1,2)))
#logistic regression


regressor=c(train_data$Survived)
regressor                           
plot(regressor)                           
barplot(regressor,col=rainbow(5))                           
hist(regressor,main="survivors",col=rainbow(2))                          
cm=table(train_data$Survived)

cm
plot(cm)
set.seed(123)
c=c("death","survivors")
x=sample(c,100,replace=T)
b=barplot(table(x),ylim=c(0,60),main="survivors",col=rainbow(2))
b
summary(b)                  
cm
accuracy=(0+342)/(0+1+549+342+1)

accuracy

telco_data = read.csv("C:/Users/PRITAM RAJ/Desktop/KSIT/telco.csv",header = TRUE)

telco_data



telco_data$gender = as.numeric(factor(telco_data$gender,
                                        levels = c('Female','Male'),
                                        labels = c(1,2)))


telco_data$marital = as.numeric(factor(telco_data$marital,
                                        levels = c('Married','Unmarried'),
                                        labels = c(1,2)))

telco_data$churn = factor(telco_data$churn,levels = c('Yes','No'),labels = c(1,0))


names(telco_data)

summary(telco_data)

telco_data=telco_data[,c("tenure","age","marital","address","income",  
                        "employ","retire","gender","reside","tollfree",
                        "longmon","tollmon","churn" )]



library(dummies)

#another way of the convertion of the character to numeric
telco_data$tollfree=dummy(telco_data$tollfree)

telco_data$retire=dummy(telco_data$retire)
class(telco_data$churn)

boxplot(income~churn,data = telco_data,col = rainbow(5))

boxplot(tenure~churn,data = telco_data,col = rainbow(5))

boxplot(age~churn,data = telco_data,col = rainbow(5))

boxplot(marital~churn,data = telco_data,col = rainbow(5))

boxplot(address~churn,data = telco_data,col = rainbow(5))

boxplot(income~churn,data = telco_data,col = rainbow(5))

boxplot(employ~churn,data = telco_data,col = rainbow(5))

boxplot(retire~churn,data = telco_data,col = rainbow(5))

boxplot(gender~churn,data = telco_data,col = rainbow(5))

boxplot(reside~churn,data = telco_data,col = rainbow(5))

boxplot(tollfree~churn,data = telco_data,col = rainbow(5))

boxplot(longmon~churn,data = telco_data,col = rainbow(5))

boxplot(longmon~churn,data = telco_data,col = rainbow(5))

boxplot(tollmon~churn,data = telco_data,col = rainbow(5))

boxplot(telco_data~churn,data = telco_data,col = rainbow(5))

library(caTools)
set.seed(123)


split = sample.split(telco_data$churn,
                     SplitRatio = .75, group = NULL)


telcoing_set = subset(telco_data,
                      split ==TRUE)

test_set = subset(telco_data,split==FALSE)



classifier = glm(formula = churn~.,
                 family = binomial,
                 data = telcoing_set)
classifier




#logistic Regression


regressor=c(telco_data$churn)
regressor                           
plot(regressor)                           
hist(regressor,main="churn",col=rainbow(2))                          
cm=table(telco_data$churn)

cm
plot(cm)
set.seed(123)
c=c("age","churn")
x=sample(c,100,replace=T)
b=barplot(table(x),ylim=c(0,60),main="churn",col=rainbow(2))
b
summary(b)                  
cm
accuracy=(1+726)/(0+1+274+726)

accuracy

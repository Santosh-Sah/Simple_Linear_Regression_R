source("SimpleLinearRegressionUtils.R")
library(ggplot2)

#reading training set 
linearRegressionTrainingSet <- readRDS("linearRegressionTrainingSet.RDS")

#reading testing set data
linearRegressionTestingSet <- readRDS("linearRegressionTestingSet.RDS")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

#visualizing training set result
visualisingTrainingSetResult <- function(linearRegressionTrainingSet, simpleLinearRegressionModel){
  
  ggplot() +
    geom_point(aes(x = linearRegressionTrainingSet$YearsExperience, y = linearRegressionTrainingSet$Salary),
               colour = "red") + 
    geom_line(aes(x = linearRegressionTrainingSet$YearsExperience, predict(simpleLinearRegressionModel, newdata = linearRegressionTrainingSet)),
              color = "blue") +
    ggtitle('Salary vs Experience (Training set)') +
    xlab('Years of experience') +
    ylab('Salary')
  
  ggsave("trainingsetresult.png")
  
}

#visualizing testing set result
visualisingTestingSetResult <- function(linearRegressionTestingSet, simpleLinearRegressionModel, linearRegressionTrainingSet){
  
  ggplot() +
    geom_point(aes(x = linearRegressionTestingSet$YearsExperience, y = linearRegressionTestingSet$Salary),
               colour = "red") + 
    geom_line(aes(x = linearRegressionTrainingSet$YearsExperience, predict(simpleLinearRegressionModel, newdata = linearRegressionTrainingSet)),
              color = "blue") +
    ggtitle('Salary vs Experience (Testing set)') +
    xlab('Years of experience') +
    ylab('Salary')
  
  ggsave("testingsetresult.png")
  
}

visualisingTrainingSetResult(linearRegressionTrainingSet, simpleLinearRegressionModel)
visualisingTestingSetResult(linearRegressionTestingSet, simpleLinearRegressionModel, linearRegressionTrainingSet)
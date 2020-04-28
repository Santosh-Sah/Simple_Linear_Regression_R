source("SimpleLinearRegressionUtils.R")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

inputValue <- data.frame(YearsExperience = c(5.5))

#predicting testing set result.
predictedValues = predict(simpleLinearRegressionModel, newdata = inputValue)

predictedValues

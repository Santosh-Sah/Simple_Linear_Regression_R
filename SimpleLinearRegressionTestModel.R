source("SimpleLinearRegressionUtils.R")

#reading testing set data
linearRegressionTestingSet <- readRDS("linearRegressionTestingSet.RDS")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

#predicting testing set result.
y_pred = predict(simpleLinearRegressionModel, newdata = linearRegressionTestingSet)

y_pred

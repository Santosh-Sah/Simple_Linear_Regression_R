source("SimpleLinearRegressionUtils.R")

#reading training set 
linearRegressionTrainingSet <- readRDS("linearRegressionTrainingSet.RDS")

# Fitting Simple Linear Regression to the Training set
simpleLinearRegression = lm(formula = Salary ~ YearsExperience, data = linearRegressionTrainingSet)

#saving linear regression model
saveSimpleLinearRegressionModel(simpleLinearRegression)

source("SimpleLinearRegressionUtils.R")
linearRegressionDatasetList <- importLinearRegressionDataset("Simple_Linear_Regression_Salary_Data.csv")

saveTrainingAndTestingDataset(linearRegressionDatasetList[[1]], linearRegressionDatasetList[[2]])

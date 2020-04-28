importLinearRegressionDataset <- function(linearRegressionDatasetFileName) {
  
  #importing dataset
  linearRegressionDataset = read.csv(linearRegressionDatasetFileName)
  
  #splitting the dataset into training set and testing set
  library(caTools)
  set.seed(1234)
  linearRegressionDatasetSlpit = sample.split(linearRegressionDataset$Salary, SplitRatio = 2/3)
  
  linearRegressionTrainingSet = subset(linearRegressionDataset, linearRegressionDatasetSlpit == TRUE)
  
  linearRegressionTestingSet = subset(linearRegressionDataset, linearRegressionDatasetSlpit == FALSE)
  
  
  returnList <- list(linearRegressionTrainingSet, linearRegressionTestingSet)
  
  return (returnList)
  
}

#saving training and testing set
saveTrainingAndTestingDataset <- function(linearRegressionTrainingSet, linearRegressionTestingSet){
  
  saveRDS(linearRegressionTrainingSet, file = "linearRegressionTrainingSet.RDS")
  saveRDS(linearRegressionTestingSet, file = "linearRegressionTestingSet.RDS")
  
}

#Save SimpleLinearRegressionModel
saveSimpleLinearRegressionModel <- function(simpleLinearRegressionModel) {
  
  saveRDS(simpleLinearRegressionModel, file = "simpleLinearRegressionModel.RDS")
}

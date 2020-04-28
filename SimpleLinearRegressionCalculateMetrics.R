source("SimpleLinearRegressionUtils.R")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")


summary(simpleLinearRegressionModel)

# Call:
#   lm(formula = Salary ~ YearsExperience, data = linearRegressionTrainingSet)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max
# -8747.5 -4315.5  -427.1  4544.5 10467.0
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)      25496.0     3071.3   8.301 1.44e-07 ***
#   YearsExperience   9662.8      512.7  18.847 2.68e-13 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 6111 on 18 degrees of freedom
# Multiple R-squared:  0.9518,    Adjusted R-squared:  0.9491
# F-statistic: 355.2 on 1 and 18 DF,  p-value: 2.677e-13

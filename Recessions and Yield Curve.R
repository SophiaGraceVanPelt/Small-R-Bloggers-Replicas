# Predicting Recessions using the Yield Curve
# from https://www.r-bloggers.com/2022/01/predicting-future-recessions/?utm_source=phpList&utm_medium=email&utm_campaign=R-bloggers-daily&utm_content=HTML

# Load the package
library(EWS)

# Load the dataset included in the package
data("data_USA") # Print the first six rows of the dataframe head(data_USA)

# Data process
Var_Y <- as.vector(data_USA$NBER)
Var_X <- as.vector(data_USA$Spread)
# Estimate the logit regression
results <- Logistic_Estimation(Dicho_Y = Var_Y, Exp_X = Var_X, Intercept = TRUE, Nb_Id = 1, Lag = 1, type_model = 1)
# print results
print(results)

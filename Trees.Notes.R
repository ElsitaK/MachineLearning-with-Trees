#Notes on decision trees from DataCamp Course
#"Machine Learning with Tree Based Models in R"

library(rpart)
library(rpart.plot)

#get data
setwd('~/Documents/Job Search/Data Science/DataCamp Course on Trees')

data <- read.csv("Data.ALL.Historic.METDATA.GOOD.csv")

# Look at the data
str(data)

# Create the model
## SINGLE DECISION TREE (very simple)
data_model <- rpart(formula = Flight.Period ~ ., 
                      data = data, 
                      method = "class")

# look at results
summary(data)

# Display the results
rpart.plot(x = data_model, yesno = 2, type = 0, extra = 0)



###splitting the data into training and testing datasets
#PRIOR to CROSS VALIDATION

# Total number of rows in the data data frame
n <- nrow(data)

# Number of rows for the training set (80% of the dataset)
n_train <- round(0.8 * n) 

# Create a vector of indices which is an 80% random sample
set.seed(123) #allows the 'sample' function to be reproducible (always the same)
train_indices <- sample(1:n, n_train)

# Subset the data data frame to training indices only
data_train <- data[train_indices, ]  

# Exclude the training indices to create the test set
data_test <- data[-train_indices, ]  

#TRAINING
# Train the model (to predict 'default')
train_model <- rpart(formula = Flight.Period ~., 
                      data = data_train, 
                      method = "class")

# Look at the model output                      
print(train_model)

## CONFUSION MATRIX

library(caret)

# Generate predicted classes using the model object
class_prediction <- predict(object = train_model,  
                            newdata = data_test,   
                            type = "class")  

# Calculate the confusion matrix for the test set
#compare prediction to the actual values in the test data set
confusionMatrix(data = class_prediction,       
                reference = data_test$Flight.Period)


# Question 01
setwd("C:\\Users\\it24102561\\Desktop\\IT24102561_LabSheet_04_(PS)")

branch_data <- read.csv("Exercise.txt", header = TRUE)
print(branch_data)

# Question 02 
print("Variable Types and Scales:\n")
print("Branch -> Categorical (Nominal)\n")
print("Sales_X1 -> Numeric (Ratio)\n")
print("Advertising_X2 -> Numeric (Ratio)\n")
print("Years_X3 -> Numeric (Ratio)\n")

str(branch_data)

# Question 03
boxplot(branch_data$Sales_X1, 
        main = "Boxplot of Sales", 
        ylab = "Sales", 
        col = "lightblue")

# Question 04
print("Five-Number Summary for Advertising:\n")
print(summary(branch_data$Advertising_X2))

print("IQR for Advertising:\n")
print(IQR(branch_data$Advertising_X2))

# Question 05
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

years_outliers <- find_outliers(branch_data$Years_X3)
print("Outliers in Years variable:\n")
print(years_outliers)


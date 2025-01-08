```r
# Corrected code using backticks for column names with spaces or special characters
df <- data.frame(Name = "John Doe", Age = 30, City = "New York")
columns_to_select <- c("Name", "Age")
subset_df <- df[, columns_to_select]
print(subset_df)

# Correctly handling special characters in column names
df2 <- data.frame(`Column Name` = 1:3, Value = letters[1:3])
columns_to_select2 <- c("Column Name", "Value")
subset_df2 <- df2[, columns_to_select2]
print(subset_df2) # Now this works correctly

# Alternative using `dplyr` package for more robust subsetting
library(dplyr)
subset_df3 <- df2 %>% select(`Column Name`, Value)
print(subset_df3)
```
# Using Library dplyr

if(!require(dplyr))install.packages("dplyr")
library(dplyr)


# Sample Dataframe
data <- data.frame(Name = c("John", "Alice", "Bob", "Alice", "John", "John"),
                   Age = c(25, 30, 22, 30, 25, 25))

# Count
count_data <- data %>%
  group_by(Name) %>%
  summarise(Count = n())

print(count_data)


# Average
agg_data <- data %>%
  group_by(Name) %>%
  summarise(Average_Age = mean(Age))

print(agg_data)

typeof(agg_data$Average_Age)



# Without using dplyr

# Sample Dataframe
data <- data.frame(Name = c("John", "Alice", "Bob"),
                   Age = c(25, 30, 22),
                   Score = c(85, 90, 88))

# Step 1: Filtering
filtered_data <- data[data$Age > 23, ]

# Step 2: Ordering the data
ordered_data <- filtered_data[order(filtered_data$Age), ]

# Step 3: Select data
selected_data <- ordered_data[, c("Name", "Score")]

# Printing
print(selected_data)


# Using dplyr


# if(!require(dplyr))install.packages("dplyr")
library(dplyr)

# Sample Dataframe
data <- data.frame(Name = c("John", "Alice", "Bob"),
                   Age = c(25, 30, 22),
                   Score = c(85, 90, 88))

# DML using pipeline (%>%)

result <- data %>%
  filter(Age > 23) %>%       # Filtering
  arrange(Age) %>%           # Ordering
  select(Name, Score)        # Select

# Printing
print(result)



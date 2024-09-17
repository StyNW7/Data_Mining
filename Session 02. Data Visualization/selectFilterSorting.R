# Select, Filter, and Sorting


# Data frame contoh
data <- data.frame(Name = c("John", "Alice", "Bob"),
                   Age = c(25, 30, 22),
                   Score = c(85, 90, 88))

# Memilih kolom 'Name' dan 'Score'
selected_data <- select(data, Name, Score)
print(selected_data)



# Memfilter data dengan Age lebih dari 23
filtered_data <- filter(data, Age > 23)
print(filtered_data)


# Mengurutkan berdasarkan Age
ordered_data <- arrange(data, Age)
print(ordered_data)


# Simply


# Step 1: Filtering
filtered <- filter(data, Age > 23)
ordered <- arrange(data, Age)
selected <- select(data, Name, Age, Score)

print (selected)


# Library dplyr

# if(!require(dplyr))install.packages("dplyr")
library(dplyr)

# Data frame contoh
data <- data.frame(Name = c("John", "Alice", "Bob"),
                   Age = c(25, 30, 22),
                   Score = c(85, 90, 88))

# Memilih kolom 'Name' dan 'Score'
# Menggunakan %>% untuk chaining operasi dengan dplyr
selected_data <- data %>%
  select(Name, Score)

print(selected_data)

# Memfilter data dengan Age lebih dari 23
filtered_data <- data %>%
  filter(Age > 23)

print(filtered_data)

# Mengurutkan berdasarkan Age
ordered_data <- data %>%
  arrange(Age)

print(ordered_data)



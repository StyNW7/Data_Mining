# ggplot2 library

if (!require(ggplot2)) install.packages("ggplot2")

library(ggplot2)

# Scatter Plot using ggplot2

# Membuat data
df <- data.frame(x = rnorm(100), y = rnorm(100))

# Membuat scatter plot
ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  labs(title="Scatter Plot dengan ggplot2", x="X axis", y="Y axis")


# Bar plot using ggplot2


# Membuat data
df <- data.frame(category=c("A", "B", "C"), values=c(3, 7, 9))

# Membuat bar plot
ggplot(df, aes(x=category, y=values)) +
  geom_bar(stat="identity", fill="steelblue") +
  labs(title="Bar Plot dengan ggplot2")


# Scatter Plot


data <- data.frame(Name = c("John", "Alice", "Bob"),
                   Age = c(25, 30, 22),
                   Score = c(85, 90, 88))

# Membuat scatter plot dengan ggplot2
ggplot(data, aes(x = Age, y = Score)) +
  geom_point() +              # Menambahkan scatter plot (titik)
  labs(title = "Scatter Plot Age vs Score", x = "Age", y = "Score") +
  theme_minimal()              # Menggunakan tema minimalis


# Testing for barplot




courses <- c("Data Mining", "AI", "Data Structures", "OOP", "Network", "Database")

freq <- c(40, 20, 100, 80, 70, 85)

datas <- data.frame(courses = courses, freq = freq)

ggplot(datas, aes(x=courses, y=freq)) +
  geom_bar(stat="identity", fill="steelblue") +
  labs(title="Bar Plot dengan ggplot2")



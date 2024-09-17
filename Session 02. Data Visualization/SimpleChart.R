# Data

courses <- c("Data Mining", "AI", "Data Structures", "OOP", "Network", "Database")

freq <- c(40, 20, 100, 80, 70, 85)



# Pie Chart

# main = title
# col = give color to each data
# labels = give label to each data

piePercent <- round(freq*100/sum(freq),1)

simplePie <- pie(freq, main="I'm a Title", col=c("red","blue","green","yellow"), labels=piePercent)

# fill = give color symbol to each legend
# cex = font size

legend("topleft", courses, fill = c("red","blue","green","yellow"), cex=0.5)




# Bar Plot

# xlab = x labels
# ylab = y labels
# names.arg = name of each data
# col = colors


barplot(freq, xlab="Courses", ylab="Student Frequency", names.arg=courses, col=rainbow(length(freq)))



# Histogram


sortedFreq <- sort(freq)
hist(freq, main="I'm a title", xlab="Courses", col="yellow", border="blue", ylim = c(0, 4), breaks = c(0, 20, 40, 60, 80, 100))



# Line Graph

# type = types of line graph
  # l = line
  # p = points
  # o = line + points

# main  = to give title

plot(freq, type='o', main="I'm a title", xlab="courses", ylab="Frequency", col="green")



# Box plot
# min, max, quartile 1, quartile 3, median


boxplot(freq, main="I'm a title", ylab="Frequency", col="pink")


# Heatmap


# Create example data
data <- matrix(rnorm(50, 0, 5), nrow = 5, ncol = 5)

# Column names
colnames(data) <- paste0("col", 1:5)
rownames(data) <- paste0("row", 1:5)

# Draw a heatmap
heatmap(data)


# Maps


if (!require(maps)) install.packages("maps")
library(maps)
map(database = "world")


# another sample


# Sample Data
x <- c(1:10)
y <- x^2

# Plot scatter
plot(x, y, main="Scatter Plot", xlab="X axis", ylab="Y axis", col="blue")


# Data
data <- c(5, 10, 15, 20)

# Bar plot
barplot(data, main="Bar Plot", col="darkred")


# Data
data <- rnorm(1000)

# Histogram
hist(data, main="Histogram", col="green")



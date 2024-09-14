# Numeric, Integer, Character, Logical
x <- 3.14           # Numerikc
age <- 25L          # Integer
name <- "John Doe"  # Character
is_student <- TRUE  # Logical

# Vector
scores <- c(85, 90, 78, 92, 88)  # Numeric Vector

# Matrix
matrix_data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow=TRUE)

# Data Frame
student_data <- data.frame(
  Name = c("John", "Alice", "Bob"),
  Age = c(25, 30, 22),
  Gender = c("Male", "Female", "Male")
)

student_data

# List
student_info <- list(name = "John Doe", age = 25, scores = scores)

# Gender
gender <- factor(c("Male", "Female", "Female", "Male"))
str(gender)

# Print data
print(gender)
print(x)
print(age)
print(name)
print(is_student)
print(scores)
print(matrix_data)
print(student_data)
print(student_info)

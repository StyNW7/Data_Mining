# Global Variable or Local Variable in Functions

globalVar <- 10
typeof(globalVar)

globalFunc <- function(){
  globalVar <<- 15
  localVar <- 5
}

globalFunc()

# Simple Return Function in R

add_numbers <- function(a, b) {
  result <<- a + b
  return(result)  # Return result
}

# Calling the function
add_numbers(5, 10)  # Output: 15


# Default arguments in function

greet <- function(name = "World") {
  message <- paste("Hello,", name)
  return(message)
}

# Calling function without argument
greet()  # Output: "Hello, World"

# Calling function with argument
greet("Alice")  # Output: "Hello, Alice"


# Function without argument

say_hello <- function() {
  print("Hello, World!")
}

say_hello()  # Output: "Hello, World!"


# Function as argument

sum_function <- function(a, b) {
  return(a + b)
}

multiply_function <- function(a, b) {
  return(a * b)
}

apply_operation <- function(a, b, operation) {
  return(operation(a, b))
}

apply_operation(5, 3, sum_function)  # Output: 8

apply_operation(5, 3, multiply_function)  # Output: 15


# Anonymous Functions


result <- (function(a, b) { return(a + b) })(5, 7)
print(result)  # Output: 12


# Returning multiple values


# Function that return list
calculate_stats <- function(x, y) {
  sum_value <- x + y
  diff_value <- x - y
  return(list(sum = sum_value, diff = diff_value))
}

# Calling the functions
result <- calculate_stats(10, 5)
print(result$sum)   # Output: 15
print(result$diff)  # Output: 5


# Real world program example


# Function to calculate area and circumference of circle
circle_calculations <- function(radius) {
  circumference <- 2 * pi * radius
  area <- pi * radius^2
  return(list(circumference = circumference, area = area))
}

# Calling the function
result <- circle_calculations(3)

# Printing
print(paste("Circumference:", result$circumference))  # Output: Circumference: 18.8495559215388
print(paste("Area:", result$area))              # Output: Area: 28.2743338823081





# Variables

a = 10
x <- 150.20
TRUE -> b

# Vector

numbers = c(1:10, 5, 1, 5, 5, 5)

names <- c("Alice", "Bob", "Charlie")

print (names[3])


# Matrix

matrix_data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)

print(matrix_data[1, 2])

# Function to calculate average

average <- function(x) {
  result <- sum(x) / length(x)
  return(result)
}

# Function

values <- c(10, 20, 30, 40, 50)
avg_value <- average(values)

print(avg_value)  # Output: 30

# Importing data

datas = read.csv("data.csv", header = TRUE, sep = "\t")
datas

# Table

numbers
table (numbers)

# Conditional

x <- 15

if (x > 20) {
  print("x lebih besar dari 20")
} else if (x == 15) {
  print("x sama dengan 15")
} else {
  print("x lebih kecil dari 15")
}

# Looping

for (i in 1:10) {
  if (i %% 2 == 0) {
    print(paste(i, "adalah angka genap", i))
  } else {
    print(paste(i, "adalah angka ganjil"))
  }
}

# Ternary Operator

ifelse(TRUE, print("true"), print("false"))



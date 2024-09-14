# Creating 2x3 Matrix
matrix_data <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(matrix_data)

# Output:
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

# Accessing elements

matrix_data[1, 2]  # Output: 3

matrix_data[1, ]  # Output: 1 3 5

matrix_data[, 2]  # Output: 3 4

# Operations in Matrix

matrix_a <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
matrix_b <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)

matrix_sum <- matrix_a + matrix_b
print(matrix_sum)
# Output:
#      [,1] [,2]
# [1,]    6   10
# [2,]    8   12


matrix_multi <- matrix_a * matrix_b
print(matrix_multi)


matrix_multi2 <- matrix_a %*% matrix_b
print(matrix_multi2)


# Important functions in Matrix


matrix_example <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)

# Dimensional

dim(matrix_example)  # Output: c(2, 3) - 2 baris, 3 kolom

# Transpose Matrix

t(matrix_example)

# Sums of columns
colSums(matrix_example)  # Output: 3 7 11

# Sums of rows
rowSums(matrix_example)  # Output: 9 12




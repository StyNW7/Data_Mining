# Numeric Vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Character Vector
char_vector <- c("apple", "banana", "cherry")

# Logical Vector
logical_vector <- c(TRUE, FALSE, TRUE, TRUE)

# Accessing Elements

numeric_vector[1]  # Output: 1

char_vector[2:3]  # Output: "banana" "cherry"

# Vector Operations

vector_a <- c(1, 2, 3, 100, 50, 4)
vector_b <- c(4, 5, 6)

result <- vector_a + vector_b
print(result)

subs <- vector_a - vector_b
print (subs)

multi <- vector_a * vector_b
print (multi)

div <- vector_a / vector_b
print (div)


# Important Functions in Vector


vector_example <- c(10, 20, 15, 5)

length(vector_example)  # Output: 4
sum(vector_example)     # Output: 50
mean(vector_example)    # Output: 12.5
sort(vector_example)    # Output: c(5, 10, 15, 20)



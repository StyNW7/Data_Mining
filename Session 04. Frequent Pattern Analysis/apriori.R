# Packages

install.packages("arules")
library(arules)

data <- read.csv("./basic/data.csv", header=TRUE, sep = ",")

data <- data[, -1]

# Apriori

rules <- apriori(data, parameter = list(support = 0.22, target = "frequent itemsets"))

# See itemsets
inspect(rules)

# See association rules with confidence = 0.8
inspect(ruleInduction(rules, confidence = 0.8))

# Importing data

header <- read.csv("./apriori/header.csv")
detail <- read.csv("./apriori/detail.csv")
items <- read.csv("./apriori/items.csv")

# Data preprocessing

merge <- merge(header, detail, by.x = "header_id", by.y = "transaction_id")
merge <- merge(merge, items, by.x = "item_id", by.y = "id")
merge$item_id <- merge$name
merge <- na.omit(merge)

split <- split(merge$item_id, merge$header_id)

# install.packages('arules')
library(arules)

rules <- apriori(split, parameter = list(support = 0.05,
                            target = "frequent itemset"))

inspect(rules)
inspect(ruleInduction(rules, confidence = 0.5))


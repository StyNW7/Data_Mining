# Importing file from csv

data <- read.csv("datafile.csv", header=TRUE, sep=";")

head (data)


# Importing file from .txt

data <- read.table("dummyData.txt", header = TRUE, sep=",")

head(data)
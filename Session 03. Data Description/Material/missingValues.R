# Basic Vector

vector1 <- c("stanley", "visella", "natha", "valdo", NA, NA, NA, "stanley", NA)
vector1

# is.na function

is.na(vector1)
vector1[is.na(vector1)] <- '-'

vector1[is.na(vector1)] <- c("null", "NULL", "IDK")

nums <- c(100, 90, 80, 95, NA, NA, 70, 100, NA)

# dataframes

dataframes <- data.frame(names = vector1, scores = nums)
dataframes

# duplicated

duplicated(dataframes)

dataframes[!duplicated(dataframes), ]

# delete all na

na.omit(dataframes)

dataframes[!is.na(dataframes$names), ]


# read.csv


read.csv("Iris.csv")


irisData <- read.csv("Iris.csv", na.strings = c(""))
irisData2 <- read.csv("Iris.csv")


data.virginica <- subset(irisData2, irisData2$Species == "Iris-virginica",
      select = c("SepalLengthCm", "SepalWidthCm", "PetalLengthCm", "PetalWidthCm", "Species"))



mean(data.virginica$SepalLengthCm)
median(data.virginica$SepalLengthCm)
sd(data.virginica$SepalLengthCm)


summary(data.virginica)

summary(irisData)



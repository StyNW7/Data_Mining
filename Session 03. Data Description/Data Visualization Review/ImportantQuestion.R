#read csv files

participant <- read.csv("Participant.csv", fileEncoding="UTF-8-BOM")
result <- read.csv("Result.csv", fileEncoding="UTF-8-BOM")
question <- read.csv("Question.csv", fileEncoding="UTF-8-BOM")

# check data

participant
result


#remove data with NA fields

result <- result[!is.na(result$Question.1), ]

result



#function for word wrapping


wrap.it <- function(x, len)
{ 
  sapply(x, function(y) paste(strwrap(y, len), 
                              collapse = "\n"), 
         USE.NAMES = FALSE)
}



# Question 1


#visualize the result of question number 2 for all gender


#calculate the sum of values in column question 2


q2.result <- table(result$Question.2)


#create label for the chart legend


q2.labels <- c("Strongly Disagree", "Disagree", "Neutral", "Agree", "Strongly Agree")


#create label for the chart


q2.percentage <- round(100*q2.result/sum(q2.result), 1)


#visualize the chart

q2.title <- question$Question[2]
pie(q2.result, labels=q2.percentage, main=q2.title,
    col=rainbow(length(q2.result)))

legend("topright", q2.labels, fill=rainbow(length(q2.result)),
       cex=0.6)


# If want to printing the table


q2 <- data.frame(
  labels=q2.labels,
  result=q2.result
)
q2



# Question 2



#visualize the result of question number 6 for female participants
#combine result and participant data

result.merged = merge(result, participant, by="Participant.Number")
result.merged


#filter the merged result based on the gender


result.female <- result.merged[result.merged$Gender == "Female", ]
result.female

#calculate sum, create label


q6.result.female <- table(result$Question.6)
q6.labels.female <- paste(names(q6.result.female), "\n", sep="")
q6.percentage.female <- round(100 * q6.result.female / sum(q6.result.female), 1)


#visualize


q6.title <- question$Question[6]

q6.title <- paste("Result Percentage of Question 6 for Female Participants:", 
                  q6.title, sep="\n")


pie(q6.result.female, labels=q6.percentage.female, 
    main=q6.title, 
    col=rainbow(length(q6.result.female)))


legend("topright", q6.labels.female, fill=rainbow(length(q6.result.female)))



# Question 6


q.1.to.5.legend = c("Question.1", "Question.2", "Question.3", "Question.4", "Question.5")


q.1.to.5 <- result[q.1.to.5.legend]


freq.1.to.5 <- data.frame(
  Question.1 = as.vector(table(q.1.to.5[1])),
  Question.2 = as.vector(table(q.1.to.5[2])),
  Question.3 = as.vector(table(q.1.to.5[3])),
  Question.4 = as.vector(table(q.1.to.5[4])),
  Question.5 = as.vector(table(q.1.to.5[5]))
)


barplot(
  as.matrix(freq.1.to.5),
  ylim=c(0,100),
  xlim=c(0, ncol(as.matrix(freq.1.to.5)) + 2.5),
  col=rainbow(length(freq.1.to.5))
)


legend("topright", c("Answered: 1", "Answered: 2", "Answered: 3", "Answered: 4", "Answered: 5"), fill=rainbow(5))




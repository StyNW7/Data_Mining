# Plotly library

if (!require(plotly))install.packages("plotly")
library(plotly)


# Sample Data
x <- rnorm(100)
y <- rnorm(100)

# Creating interactive scatter plot
plot_ly(x = ~x, y = ~y, type = 'scatter', mode = 'markers') %>%
  layout(title="I'm a title", xaxis=list(title="Age"), yaxis=list(title="Points"))

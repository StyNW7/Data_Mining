# Data Preprocessing

#read csv files

rate <- read.csv("Exchange Rate.csv", fileEncoding = "UTF-8-BOM")


#divide data based on currency

rate.btc <- rate[rate$Cryptocurrency == "BTC",]
rate.xrp <- rate[rate$Cryptocurrency == "XRP",]
rate.eth <- rate[rate$Cryptocurrency == "ETH",]


# Example for subset

testt <- rate[rate$Cryptocurrency == "BTC",c("Price", "Time")]


#order based on date and time

rate.btc <- rate.btc[order(rate.btc$Date, rate.btc$Time), ]
rate.xrp <- rate.xrp[order(rate.xrp$Date, rate.xrp$Time), ]
rate.eth <- rate.eth[order(rate.eth$Date, rate.eth$Time), ]


# Question 1


#Calculate Open and Close price of Ethereum on 16 August


rate.eth.16aug <- rate.eth[rate.eth$Date == "16-Aug-18", ]


#open

rate.eth.16aug.open <- rate.eth.16aug$Price[1]
paste("Ethereum 16 August Open Price: Rp.", rate.eth.16aug.open, sep=" ")


#close

rate.eth.16aug.close <- rate.eth.16aug$Price[nrow(rate.eth.16aug)]
paste("Ethereum 16 August Close Price: Rp. ", rate.eth.16aug.close, sep="")


# Question 2


#Calculate High and Low of Bitcoin on 15 August



rate.btc.15aug <- rate.btc[rate.btc$Date == "15-Aug-18", ]


#Low


rate.btc.15aug.low <- min(gsub(".", "", rate.btc.15aug$Price,fixed=TRUE))
rate.btc.15aug.low <- format(as.integer(rate.btc.15aug.low), big.mark=".",
                             decimal.mark=",",scientific=FALSE)
paste("Bitcoin 15 August Low Price: Rp. ", rate.btc.15aug.low)


#High


rate.btc.15aug.high <- max(gsub(".", "", rate.btc.15aug$Price, fixed=TRUE))
rate.btc.15aug.high <- format(as.integer(rate.btc.15aug.high), big.mark=".",
                              decimal.mark=",",scientific=TRUE)
paste("Bitcoin 15 August High Price: Rp. ", rate.btc.15aug.high)



# Question 3


#Calculate Mean, Median, and Standard Deviation 
#of Ripple on 18 August


rate.xrp.18aug <- rate.xrp[rate.xrp$Date == "18-Aug-18",]
rate.xrp.18aug.price <- gsub(".", "", rate.xrp.18aug$Price, fixed=TRUE) 
rate.xrp.18aug.price <- as.integer(rate.xrp.18aug.price)


#Summary of data


summary(rate.xrp.18aug, maxsum = (nrow(rate.xrp.18aug) + 1))


#Mean

rate.xrp.18aug.mean <- mean(rate.xrp.18aug.price)  
rate.xrp.18aug.mean <- format(rate.xrp.18aug.mean, big.mark=".",
                              decimal.mark=",", scientific=FALSE)
paste("Ripple 18 August Average Price: Rp. ", rate.xrp.18aug.mean)


#Median

rate.xrp.18aug.median <- median(rate.xrp.18aug.price)
rate.xrp.18aug.median <- format(rate.xrp.18aug.median, big.mark=".",
                                decimal.mark=",", scientific=FALSE)
paste("Ripple 18 August Median Price: Rp. ", rate.xrp.18aug.median)


#Standard Deviation

rate.xrp.18aug.sd <- sd(rate.xrp.18aug.price)
rate.xrp.18aug.sd <- format(rate.xrp.18aug.sd, big.mark = ".",
                            decimal.mark=",", scientific=FALSE)
paste("Ripple 18 August Standard Deviation:", rate.xrp.18aug.sd)


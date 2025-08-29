# Question 01
setwd("C:\\Users\\it24102561\\Desktop\\IT24102561_PS_Lab_05")
getwd()

#Question 02
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)
print(Delivery_Times)


hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")


hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)

#Question 03
#The distribution appears to be slightly right-skewed with a peak around 35-40 minutes.

#Question 04
cumulative_freq <- cumsum(hist_data$counts)


plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "blue")

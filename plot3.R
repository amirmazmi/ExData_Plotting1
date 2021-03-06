#
# Exploratory Data Analysis
#   Project 
#
#   Create plot number 3
#
# rm(list=ls())
# setwd("F:/Coursera/04 Exploratory Data Analysis/Project/")

library(data.table)
library(dplyr)
library(lubridate)
library(ggplot2)

#get data
file_path <- "F:/Coursera/04 Exploratory Data Analysis/Project/data/"
file_name <- "household_power_consumption2.txt"
locfile <- file.path( file_path, file_name)

DT <- fread( locfile, na.strings="?", colClasses = c("character","character", 
                                                     rep("numeric",7) ))

DT <- tbl_df(DT[c(66637:69516),])

DT1 <- mutate( Datetime=dmy_hms(paste(DT$Date,DT$Time) ), DT)

DT2 <- DT1[,c(10,7,8,9)]


plot(DT1$Datetime, DT1$Sub_metering_1, type="l", col="black", 
     ylab="Energy sub metering", xlab=" "     )
lines(DT1$Datetime, DT1$Sub_metering_2, type="l", col="red")
lines(DT1$Datetime, DT1$Sub_metering_3, type="l", col="blue")
legend("topright", colnames(DT1[c(7,8,9)]), col=c("black", "red", "blue"), lty=1 )




#
# Exploratory Data Analysis
#   Project 
#
#   Create plot number 2
#
# rm(list=ls())
# setwd("F:/Coursera/04 Exploratory Data Analysis/Project/")

library(data.table)
library(dplyr)
library(lubridate)


#get data
file_path <- "F:/Coursera/04 Exploratory Data Analysis/Project/data/"
file_name <- "household_power_consumption2.txt"
locfile <- file.path( file_path, file_name)

DT <- fread( locfile, na.strings="?", colClasses = c("character","character", 
                                                     rep("numeric",7) ))

DT1 <- tbl_df(DT[c(66637:69516),])


DT1 <- mutate( Datetime=dmy_hms(paste(DT1$Date,DT1$Time) ), DT1)



plot(DT1$Datetime, DT1$Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab=" "     )









#
# Exploratory Data Analysis
#   Project 
#
#   Create plot number 1
#
# rm(list=ls())
# 

library(data.table)
library(dplyr)

#get data
file_path <- "F:/Coursera/04 Exploratory Data Analysis/Project/data/"
file_name <- "household_power_consumption2.txt"
locfile <- file.path( file_path, file_name)

DT <- fread( locfile, na.strings="?", colClasses = c("character","character", 
                                                     rep("numeric",7) ))

DT1 <- tbl_df(DT[c(66637:69516),])

# inspect data
head(DT1)
tail(DT1)
colnames(DT1)
summary(DT1)
dim(DT1)



# remove initial read
rm(DT)

DT2 <- as.numeric(unlist(DT1[,3]))

hist(DT2, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")





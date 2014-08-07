
library(sqldf)


fn<-"E:/Documentos/Online Courses/Exploratory Data Analysis/Project 1/household_power_consumption.txt"

Data <- read.csv.sql(fn, sep=";",sql = 'select * from file where Date = "1/2/2007" or Date ="2/2/2007" ')

png("plot1.png")

hist(Data$Global_active_power, col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
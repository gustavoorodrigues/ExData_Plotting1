
library(sqldf)


fn<-"E:/Documentos/Online Courses/Exploratory Data Analysis/Project 1/household_power_consumption.txt"

Data <- read.csv.sql(fn, sep=";",sql = 'select * from file where Date = "1/2/2007" or Date ="2/2/2007" ')

head(Data)
Data$Date <- strptime(paste(Data$Date,Data$Time), "%d/%m/%Y %H:%M:%S")

png("plot2.png")
plot(Data$Date,Data$Global_active_power,  type = "n",xlab = " ",ylab = "Global Active Power (kilowatts)")
lines(Data$Date,Data$Global_active_power, type = "l")

dev.off()
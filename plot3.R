
library(sqldf)


fn<-"E:/Documentos/Online Courses/Exploratory Data Analysis/Project 1/household_power_consumption.txt"

Data <- read.csv.sql(fn, sep=";",sql = 'select * from file where Date = "1/2/2007" or Date ="2/2/2007" ')

Data$Date <- strptime(paste(Data$Date,Data$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(Data$Date,Data$Sub_metering_1,  type = "n",xlab = " ",ylab = "Enery sub metering")
lines(Data$Date,Data$Sub_metering_1, type = "l")
lines(Data$Date,Data$Sub_metering_2, type = "l",col = "red")
lines(Data$Date,Data$Sub_metering_3, type = "l",col = "blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col = c("black","red","blue"))
dev.off()
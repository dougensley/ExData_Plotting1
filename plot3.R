all_data <- read.table("household_power_consumption.txt", sep=";",header=TRUE)
all_data$Date <- as.character(all_data$Date)
all_data <- all_data[all_data$Date == "1/2/2007" | all_data$Date == "2/2/2007", ]

png("plot3.png", width=480, height=480)
plot(as.numeric(all_data$Sub_metering_1), xaxt="n", type="l", xlab="", ylab="Energy sub metering", main="", col=c("black"))
lines(as.numeric(all_data$Sub_metering_2),col="red")
lines(as.numeric(all_data$Sub_metering_3),col="blue")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(2,2,2),col=c("black","red","blue"))
dev.off()
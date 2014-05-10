all_data <- rall_data <- read.table("household_power_consumption.txt", sep=";",header=TRUE)
all_data$Date <- as.character(all_data$Date)
all_data <- all_data[all_data$Date == "1/2/2007" | all_data$Date == "2/2/2007", ]

png("plot4.png")
par(mfrow=c(2,2))

plot(as.numeric(all_data$Global_active_power),xaxt="n",type="l", xlab="", ylab="Global Active Power")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))  

plot(as.numeric(all_data$Voltage),type="l", xaxt="n", xlab="datetime", ylab="Voltage")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))  

plot(as.numeric(all_data$Sub_metering_1), xaxt="n", type="l", xlab="", ylab="Energy sub metering", col=c("black"))
lines(as.numeric(all_data$Sub_metering_2),col="red")
lines(as.numeric(all_data$Sub_metering_3),col="blue")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", bty="n",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(2,2,2),col=c("black","red","blue"))

plot(as.numeric(all_data$Global_reactive_power),xaxt="n",type="l", xlab="datetime", ylab="Global Reactive Power")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))  
dev.off()
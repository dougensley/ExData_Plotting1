all_data <- read.table("household_power_consumption.txt", sep=";",header=TRUE)
all_data$Date <- as.character(all_data$Date)
all_data <- all_data[all_data$Date == "1/2/2007" | all_data$Date == "2/2/2007", ]

png("plot2.png", width=480, height=480)
plot(as.numeric(all_data$Global_active_power),xaxt="n",type="l", xlab="", ylab="Global Active Power (kilowatts)", main="")
axis(1, at=c(0, 1440,  2880), labels=c("Thu", "Fri", "Sat"))  
dev.off()
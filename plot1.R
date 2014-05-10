all_data <- read.table("household_power_consumption.txt", sep=";",header=TRUE)
all_data$Date <- as.character(all_data$Date)
all_data <- all_data[all_data$Date == "1/2/2007" | all_data$Date == "2/2/2007", ]

png("plot1.png", width=480, height=480)
hist(as.numeric(all_data$Global_active_power), xlab="Global Active Power", col="red",main="Global Active Power")
dev.off()
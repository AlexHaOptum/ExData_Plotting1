setwd ("/Users/aha/Documents/DSU/UCIrvine")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot2.png", width=480, height=480)

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalAP <- as.numeric(subset$Global_active_power)
plot(datetime, globalAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")

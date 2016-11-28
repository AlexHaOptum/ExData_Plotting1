setwd ("/Users/aha/Documents/DSU/UCIrvine")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
png("plot3.png", width=480, height=480)

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset$Global_active_power)

SM1 <- as.numeric(subset$Sub_metering_1)
SM2 <- as.numeric(subset$Sub_metering_2)
SM3 <- as.numeric(subset$Sub_metering_3)

plot(datetime, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SM2, type="l", col="red")
lines(datetime, SM3, type="l", col="blue")
legend("topright", c("SM1", "SM2", "SM3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
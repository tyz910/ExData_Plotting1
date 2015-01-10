source('get_data.R')

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

plot(hpcdata$DateTime, hpcdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(hpcdata$DateTime, hpcdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(hpcdata$DateTime, hpcdata$Sub_metering_1, type = "l", xlab = "", ylab="Energy sub metering")
lines(hpcdata$DateTime, hpcdata$Sub_metering_2, type = "l", col = "red")
lines(hpcdata$DateTime, hpcdata$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, bty = "n", col = c("black", "red", "blue"), legend = names(hpcdata[, 7:9]))

plot(hpcdata$DateTime, hpcdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
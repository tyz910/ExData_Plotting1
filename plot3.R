source('get_data.R')

png(filename = "plot3.png", width = 480, height = 480)
plot(hpcdata$DateTime, hpcdata$Sub_metering_1, type = "l", xlab = "", ylab="Energy sub metering")
lines(hpcdata$DateTime, hpcdata$Sub_metering_2, type = "l", col = "red")
lines(hpcdata$DateTime, hpcdata$Sub_metering_3, type = "l", col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = names(hpcdata[, 7:9]))
dev.off()
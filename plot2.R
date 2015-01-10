source('get_data.R')

png(filename = "plot2.png", width = 480, height = 480)
plot(hpcdata$DateTime, hpcdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (in kilowatts)")
dev.off()
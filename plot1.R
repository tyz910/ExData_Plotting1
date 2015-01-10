source('get_data.R')

png(filename = "plot1.png", width = 480, height = 480)
hist(hpcdata$Global_active_power, col = "red", xlab = "Global Active Power (in kilowatts)", main = "Global Active Power")
dev.off()
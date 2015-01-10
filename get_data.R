# download file
if (!file.exists('household_power_consumption.txt')) {
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', 'household_power_consumption.zip', method = 'wget')
  unzip('household_power_consumption.zip')
  file.remove('household_power_consumption.zip')
}

# read data
if (!exists('hpcdata')) {
  hpcdata <- read.csv('household_power_consumption.txt' , sep = ';', na.strings = '?')
  
  # subset
  hpcdata <- subset(hpcdata, Date == "1/2/2007" | Date =="2/2/2007")
  hpcdata$DateTime <- strptime(paste(hpcdata$Date, hpcdata$Time), "%d/%m/%Y %H:%M:%S")
}

Fdata <- read.table("Clean_Data.txt", header = TRUE, row.names = NULL)
Fdata$row.names <- NULL
Fdata$Time <- strptime(paste(Fdata$Date,Fdata$Time), "%d/%m/%Y %H:%M:%S", tz = "EST")
#Fdata$Date <- as.Date(Fdata$Date,"%d/%m/%Y")
plot(Fdata$Time,Fdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()

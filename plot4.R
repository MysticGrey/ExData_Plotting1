Fdata <- read.table("Clean_Data.txt", header = TRUE, row.names = NULL)
Fdata$row.names <- NULL
Fdata$Time <- strptime(paste(Fdata$Date,Fdata$Time), "%d/%m/%Y %H:%M:%S", tz = "EST")
par(mfrow = c(2,2),mar=c(4,4,2,2))
with(Fdata, {
        plot(Time,Global_active_power, 
             type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
        plot(Time,Voltage, 
             type = "l", xlab = "datatime", ylab = "Voltage")
        plot(Time,Sub_metering_1, type = "n", xlab = "", ylab = "Energy Sub Metering")
        points(Time,Sub_metering_1, col = "black", type = "l")
        points(Time,Sub_metering_2, col = "red", type = "l")
        points(Time,Sub_metering_3, col = "blue", type = "l")
        legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, bty = "n", 
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex=0.7)
        plot(Time,Global_reactive_power, 
             type = "l", xlab = "datatime", ylab = "Global_reactive_Power")
        
})

dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()

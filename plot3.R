Fdata <- read.table("Clean_Data.txt", header = TRUE, row.names = NULL)
Fdata$row.names <- NULL
Fdata$Time <- strptime(paste(Fdata$Date,Fdata$Time), "%d/%m/%Y %H:%M:%S", tz = "EST")
#Fdata$Date <- as.Date(Fdata$Date,"%d/%m/%Y")
plot(Fdata$Time,Fdata$Sub_metering_1, type = "n", xlab = "", ylab = "Energy Sub Metering", cex=0.8)
points(Fdata$Time,Fdata$Sub_metering_1, col = "black", type = "l")
points(Fdata$Time,Fdata$Sub_metering_2, col = "red", type = "l")
points(Fdata$Time,Fdata$Sub_metering_3, col = "blue", type = "l")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex=0.8)
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
Fdata <- read.table("Clean_Data.txt", header = TRUE, row.names = NULL)
Fdata$row.names <- NULL
hist(Fdata$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
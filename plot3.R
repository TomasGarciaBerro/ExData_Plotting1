library(data.table)

setwd("C:/Users/rgarciaberro/Documents/Tomi/Data Science/C4 Exploratory Analysis")

dt <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
for_names_dt <- read.table("household_power_consumption.txt", header = T, nrow = 1, sep = ";")

names(dt) <- names(for_names_dt)

dt$DateTime <- strptime(paste(dt$Date," ",dt$Time),format = "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(dt$DateTime,dt$Sub_metering_1,type = "n", ylab = "Energy submetering", xlab = "")
points(dt$DateTime,dt$Sub_metering_1, col = "black",type = "l")
points(dt$DateTime,dt$Sub_metering_2, col = "red",type = "l")
points(dt$DateTime,dt$Sub_metering_3, col = "blue",type = "l")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), pch = "-",lty = 1, col = c("black","red","blue"))
dev.off()
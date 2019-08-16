library(data.table)

setwd("C:/Users/rgarciaberro/Documents/Tomi/Data Science/C4 Exploratory Analysis")

dt <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";")
for_names_dt <- read.table("household_power_consumption.txt", header = T, nrow = 1, sep = ";")

names(dt) <- names(for_names_dt)

png("plot1.png")
hist(dt$Global_active_power, col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()
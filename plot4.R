
# This is part of the Week-1 Project of the'Exploratory Data Analysis' course.

if (!exists("cs")) {
    source("read_data.R")
    cs <- read_data()
}

png("plot4.png")
par(mfrow = c(2,2))
par(mar = c(4, 5, 2, 1) + 0.1)

with(cs, {
    
    plot(
        Time, Global_active_power, type = "l", xlab = NA,
        ylab = "Global Active Power (kilowatts)")
    
    plot(Time, Voltage, type = "l", xlab = "datetime")
    
    plot(
        Time, Sub_metering_1, type = "n", xlab = NA,
        ylab = "Energy sub metering")
    lines(Time, Sub_metering_1, col = "black")
    lines(Time, Sub_metering_2, col = "red")
    lines(Time, Sub_metering_3, col = "blue")
    legend(
        "topright", col = c("black", "red", "blue"), lty = c(1, 1, 1),
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    plot(Time, Global_reactive_power, type = "l", xlab = "datetime")
})
dev.off()

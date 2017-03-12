
# This is part of the Week-1 Project of the'Exploratory Data Analysis' course.

if (!exists("cs")) {
    source("read_data.R")
    cs <- read_data()
}

png("plot3.png")
with(cs, {
    plot(
        Time, Sub_metering_1, type = "n", xlab = NA,
        ylab = "Energy sub metering")
    lines(Time, Sub_metering_1, col = "black")
    lines(Time, Sub_metering_2, col = "red")
    lines(Time, Sub_metering_3, col = "blue")
    legend(
        "topright", col = c("black", "red", "blue"), lty = c(1, 1, 1),
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()

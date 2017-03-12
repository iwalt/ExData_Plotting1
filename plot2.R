
# This is part of the Week-1 Project of the'Exploratory Data Analysis' course.

if (!exists("cs")) {
    source("read_data.R")
    cs <- read_data()
}

png("plot2.png")
with(cs, plot(
    Time, Global_active_power, type = "l", xlab = NA,
    ylab = "Global Active Power (kilowatts)"))
dev.off()

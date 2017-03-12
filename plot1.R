
# This is part of the Week-1 Project of the'Exploratory Data Analysis' course.

if (!exists("cs")) {
    source("read_data.R")
    cs <- read_data()
}

png("plot1.png")
with(cs, hist(
    Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
    main = "Global Active Power"))
dev.off()

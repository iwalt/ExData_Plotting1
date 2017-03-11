
# This is part of the Week-1 Project of the'Exploratory Data Analysis' course.

# Obtain the project data source if necessary, returns prepared data.frame.
# Returned data corresponds to just two dates: 2007-02-01 and 2007-02-02.
read_data <- function () {
    
    require("sqldf")
    
    source_file <- "household_power_consumption.txt"
    if (!file.exists(source_file)) {
        
        data_uri <- paste0(
            "https://d396qusza40orc.cloudfront.net/",
            "exdata%2Fdata%2Fhousehold_power_consumption.zip")
        
        archive <- "exdata-data-household_power_consumption.zip"
        
        download.file(data_uri, destfile = archive, mode = "wb")
        unzip(archive)
    }
    
    x <- read.csv.sql(
        source_file, header = TRUE, sep = ";",
        sql = "SELECT * FROM file WHERE Date in ('1/2/2007', '2/2/2007')")
    
    x$Time <- strptime(paste(x$Date, x$Time), format = "%d/%m/%Y %H:%M:%S")
    x$Date <- as.Date(x$Date, format = "%d/%m/%Y")
    
    x
}
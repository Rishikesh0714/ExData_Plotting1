setwd(
  "D:/Rishikesh_Data_Science/R_proggrame_coursera/Exploratory_Data_Analysis/Assignment_week1"
)
library(data.table)

# Reading data
power_consumption <-
  fread(
    "./household_power_consumption.txt",
    header = TRUE,
    sep = ";",
    na.strings = "?"
  )
our_data <-
  subset(power_consumption, Date %in% c("1/2/2007", "2/2/2007"))

library(lubridate)

our_data$Date <- dmy(our_data$Date)
our_data$Time <- hms(our_data$Time)
rm(ls = "power_consumption")


# plotting
hist(
  our_data$Global_active_power,
  main = "Global Active Power",
  col = "red",
  xlab = "Global Active Power (kilowatts)"
)
if (!file.exists('plot1.png')) {
  dev.copy(png,
           file = "plot1.png",
           height = 480,
           width = 480)
}

dev.off()



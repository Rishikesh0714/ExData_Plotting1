setwd(
  "D:/Rishikesh_Data_Science/R_proggrame_coursera/Exploratory_Data_Analysis/Assignment_week1"
)
library(data.table)

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

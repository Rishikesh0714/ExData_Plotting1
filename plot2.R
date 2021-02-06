source(
  'D:/Rishikesh_Data_Science/R_proggrame_coursera/Exploratory_Data_Analysis/Assignment_week1/Reading_Data.R'
)
library(dplyr)

our_data <- mutate(our_data, Week_day = Date + Time)
with(
  our_data,
  plot(
    Week_day,
    Global_active_power,
    type = "l",
    ylab = "Global Active Power (kilowatts)",
    xlab = " "
  )
)

if (!file.exists('plot2.png')) {
  dev.copy(png,
           file = "plot2.png",
           height = 480,
           width = 480)
}

dev.off()
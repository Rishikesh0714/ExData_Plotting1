source(
  'D:/Rishikesh_Data_Science/R_proggrame_coursera/Exploratory_Data_Analysis/Assignment_week1/Reading_Data.R'
)

library(dplyr)
our_data <- mutate(our_data, Week_day = Date + Time)

par(
  mfrow = c(2, 2),
  mar = c(4.3, 4, 2, 2) ,
  oma = c(0, 0, 0, 0)
)


# plot (1,1)
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

# plot(1,2)
with(our_data,
     plot(
       Week_day,
       Voltage,
       type = "l",
       ylab = "Voltage",
       xlab = "datetime"
     ))

# plot(2,1)
with(
  our_data,
  plot(
    Week_day,
    Sub_metering_1,
    type = 'n',
    xlab = " ",
    ylab = "Energy sub metering"
  )
)
with(our_data, points(Week_day, Sub_metering_1, type = 'l'))
with(our_data,
     points(Week_day, Sub_metering_2, type = 'l', col = "red"))
with(our_data,
     points(Week_day, Sub_metering_3, type = 'l', col = "blue"))

legend(("topright"),
       col = c("black", "red", "blue"),
       lty = 1,
       lwd = 2,
       bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       cex = 0.8,
       
)

# plot 4

with(our_data,
     plot(
       Week_day,
       Global_reactive_power,
       type = "l",
       xlab = "datetime"
     ))

if (!file.exists('plot4.png')) {
  dev.copy(png,
           file = "plot4.png",
           height = 480,
           width = 480)
}


dev.off()

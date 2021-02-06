source(
  'D:/Rishikesh_Data_Science/R_proggrame_coursera/Exploratory_Data_Analysis/Assignment_week1/Reading_Data.R'
)

library(dplyr)
our_data <- mutate(our_data, Week_day = Date + Time)

par(mar = c(2, 4, 2, 2))

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


legend(
  'topright',
  lty = 1,
  lwd = 1,
  col = c("black", "red", "blue"),
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  cex =  0.8,
  pt.cex = 0.3
)

if (!file.exists('plot3.png')) {
  dev.copy(png,
           file = "plot3.png",
           height = 480,
           width = 480)
}


dev.off()



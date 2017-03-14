showgr3 <- function() {
  # read total dataset 
  #in_data<-read.csv("C:/rdata/consumption/household_power_consumption.txt",sep=";",colClasses = "character")
  # select only 1/2/2007 and 2/2/2007
  #q<-subset(in_data,Date=="1/2/2007"|Date=="2/2/2007")
  # write select dates so it will be faster to load
  #write.csv(q,file="C:/rdata/consumption/feb.txt",row.names=FALSE)
  q<-read.csv("C:/rdata/consumption/feb.txt",sep=",",colClasses = "character")
  png(filename="c:/rdata/consumption/plot3.png")
  with(q, {
    plot(Sub_metering_1 ~ Datetime, type = "l", 
         ylab = "Global Active Power (kilowatts)", xlab = "")
    lines(Sub_metering_2 ~ Datetime, col = 'Red')
    lines(Sub_metering_3 ~ Datetime, col = 'Blue')
  })
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}
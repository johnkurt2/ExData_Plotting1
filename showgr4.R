showgr4<-function() {
  # read total dataset 
  #in_data<-read.csv("C:/rdata/consumption/household_power_consumption.txt",sep=";",colClasses = "character")
  # select only 1/2/2007 and 2/2/2007
  #q<-subset(in_data,Date=="1/2/2007"|Date=="2/2/2007")
  # write select dates so it will be faster to load
  #write.csv(q,file="C:/rdata/consumption/feb.txt",row.names=FALSE)
  q<-read.csv("C:/rdata/consumption/feb.txt",sep=",",colClasses = "character")
  
  png(filename="c:/rdata/consumption/plot4.png")
  par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
  with(q, {
    plot(Global_active_power ~ Datetime, type = "l", 
         ylab = "Global Active Power", xlab = "")
    plot(Voltage ~ Datetime, type = "l", ylab = "Voltage", xlab = "datetime")
    plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Energy sub metering",
         xlab = "")
    lines(Sub_metering_2 ~ Datetime, col = 'Red')
    lines(Sub_metering_3 ~ Datetime, col = 'Blue')
    legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
           bty = "n",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power ~ Datetime, type = "l", 
         ylab = "Global_rective_power", xlab = "datetime")
  })
  dev.off()
}
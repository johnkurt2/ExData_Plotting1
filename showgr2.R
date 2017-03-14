showgr2<-function(){
  # read total dataset 
  #in_data<-read.csv("C:/rdata/consumption/household_power_consumption.txt",sep=";",colClasses = "character")
  # select only 1/2/2007 and 2/2/2007
  #q<-subset(in_data,Date=="1/2/2007"|Date=="2/2/2007")
  # write select dates so it will be faster to load
  #write.csv(q,file="C:/rdata/consumption/feb.txt",row.names=FALSE)
  q<-read.csv("C:/rdata/consumption/feb.txt",sep=",",colClasses = "character")
  # convert to date-format
  q$Date <- as.Date(q$Date, format = "%d/%m/%Y")
  # connect date and time to datetime
  datetime <- paste(as.Date(q$Date), q$Time)
  # convert datetime to day of week
  q$Datetime <- as.POSIXct(datetime)
  png(filename="c:/rdata/consumption/plot2.png")
  plot(q$Global_active_power ~ q$Datetime, type = "l",
       ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
}
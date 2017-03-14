showgr1<-function() {
  # read total dataset 
  #in_data<-read.csv("C:/rdata/consumption/household_power_consumption.txt",sep=";",colClasses = "character")
  # select only 1/2/2007 and 2/2/2007
  #q<-subset(in_data,Date=="1/2/2007"|Date=="2/2/2007")
  # write select dates so it will be faster to load
  #write.csv(q,file="C:/rdata/consumption/feb.txt",row.names=FALSE)
  q<-read.csv("C:/rdata/consumption/feb.txt",sep=",",colClasses = "character")
  png(filename="c:/rdata/consumption/plot1.png")
  hist(as.numeric(q$Global_active_power),main="Global Activer Power",col="red",xlab = "Global Active Power (kilowatts)")
  dev.off()
}
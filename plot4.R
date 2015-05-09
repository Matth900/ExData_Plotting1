# Code for making the fourth plot
# Plot Description : 4 Plots Box

source("load_file.R") # First of all, we need to load the data, sourcing the load_file.R script
png(file="plot4.png",width=480,height=480)

par(mfrow=c(2,2))
with(data,{
  plot(exact_date,Global_active_power,type="l",xlab="",ylab="Global Active Power")
  plot(exact_date,Voltage,type="l",xlab="datetime",ylab="Voltage")
  plot(exact_date,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
  points(exact_date,Sub_metering_2,type="l",col="red")
  points(exact_date,Sub_metering_3,typ="l",col="blue")
  legend("topright",lwd=2,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
  plot(exact_date,Global_reactive_power,type="l",xlab="datetime")
  })

dev.off()

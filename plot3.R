# Code for making the third Plot
# Plot Description : Multiple Line plots of the Sub metering (1/2/3) for the two days under consideration

source("load_file.R") # First of all, we need to load the data, sourcing the load_file.R script
png(file="plot3.png",width=480,height=480)
with(data, {
  
  plot(exact_date,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
  points(exact_date,Sub_metering_2,type="l",col="red")
  points(exact_date,Sub_metering_3,type="l",col="blue")
  
})

legend("topright",lwd=2,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

# Code for making the first Plot
# Plot Description : Histogram reporting frequencies for Global Active Power within the two dates 01/02/2007-02/02/2007

source("load_file.R") # First of all, we need to load the data, sourcing the load_file.R script

png(file="plot1.png",width=480,height=480)

with(data,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))

dev.off()

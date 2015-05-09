# Code for making the second Plot
# Plot Description : Line plot of the Global Active Power for the two days under consideration

source("load_file.R") # First of all, we need to load the data, sourcing the load_file.R script
png(file="plot2.png",width=480,height=480)
with(data,plot(exact_date,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()

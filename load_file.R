# Script to Load File

# First, check if file has been downloaded and is present in the current working directory

if (!file.exists("household_power_consumption.txt")) {
  
  print("Cannot find the file under your current working directory")
  
} else {
  
  # Read the data from the txt file, coercing all data to character for now, later will ben changed
  
  data<-read.table("household_power_consumption.txt",header=TRUE,colClasses=c(rep("character",2),rep("numeric",7)),sep=";",na.strings="?")
  
  
  # Create a new feature exact_date which takes into account the day and precise time combined
  
  data$exact_date<-paste(data$Date,data$Time,sep=" ")
  
  # Convert the exact date with (strptime) into POSIXlt Format
  
  data$exact_date<-strptime(data$exact_date,"%d/%m/%Y %H:%M:%S")
  
  data$Date<-as.Date(data$Date,format="%d/%m/%Y")
  
  # Subset the data. We are interested only in the first two das of february.
 
  data<-subset(data,Date=="2007-02-01" | Date=="2007-02-02")
  
}

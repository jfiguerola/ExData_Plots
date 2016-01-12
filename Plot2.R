# Plot2
getwd()
data = read.table("household_power_consumption.txt", sep=";", header=TRUE) #read the data
head(data)
colnames(data)
class(data$Date)
data$Date2=as.Date(strptime(data$Date, "%d/%m/%Y")) #convert to Date
head(data)
data2=subset(data,data$Date2>="2007-02-01" & data$Date2<="2007-02-02") #Subset correct dates
head(data2)
data2$Global_active_power=as.numeric(data2$Global_active_power)
class(data2$Global_active_power)
data2$Date3=as.POSIXct(paste(data2$Date, data2$Time), format="%d/%m/%Y %H:%M:%S") #convert to Date & Time
head(data2)

png(file="plot2.png",width=480,height=480) #creates the png file we will use
with(data2,plot(Date3,Global_active_power,type="l",ylab="Global Active Power (kilowats)",xlab=""))
dev.off() # closes png file

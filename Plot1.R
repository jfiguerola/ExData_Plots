# 11/01/2016
# QUIZZ 1 - Plot1

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
png(file="plot1.png",width=480,height=480)#creates the png file we will use
hist(data2$Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power (kilowats)")
dev.off() # closes png file

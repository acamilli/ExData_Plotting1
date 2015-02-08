setwd("F:/Coursera Exploratory Data")
Sys.setlocale("LC_TIME", "English")
hpc<-read.csv("./household_power_consumption.txt", sep=";")
hpc_Feb<-subset(hpc,as.Date(hpc$Date,"%d/%m/%Y")>="2007-02-01"&as.Date(hpc$Date,"%d/%m/%Y")<"2007-02-03")

gap<-as.numeric(levels(hpc_Feb$Global_active_power))[hpc_Feb$Global_active_power]
sm_1<-as.numeric(levels(hpc_Feb$Sub_metering_1))[hpc_Feb$Sub_metering_1]
sm_2<-as.numeric(levels(hpc_Feb$Sub_metering_2))[hpc_Feb$Sub_metering_2]
sm_3<-hpc_Feb$Sub_metering_3
volts<-as.numeric(levels(hpc_Feb$Voltage))[hpc_Feb$Voltage]
grp<-as.numeric(levels(hpc_Feb$Global_reactive_power))[hpc_Feb$Global_reactive_power]
dt <- strptime(paste(hpc_Feb$Date,hpc_Feb$Time), "%d/%m/%Y %H:%M:%S")

#Plot 1
#png("plot1.png")
#hist(gap, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", cex.main=1, cex.axis=0.8, cex.lab=0.8)
#Plot 2
png("plot2.png")
plot(dt,gap,type="l",ylab="Global Active Power (kilowatts)", xlab="", cex.axis=1, cex.lab=1)
#plot 3
#plot(dt,sm_1, type="l", xlab="",ylab="Energy Sub Metering", cex.axis=0.9, cex.lab=0.9)
#lines(dt,sm_2, col="red")
#lines(dt,sm_3, col="blue")
#legend("topright", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=c(1,1), col=c("black" ,"blue", "red"), cex=0.9)
#Plot 4
#png("plot4.png")
#par(mfrow=c(2,2), mar=c(4,4,2,2))
#plot(dt,gap,type="l",ylab="Global Active Power", xlab="", cex.axis=1, cex.lab=1)
#plot(dt,volts,type="l",ylab="Voltage", xlab="datetime", cex.axis=1, cex.lab=1)
#plot(dt,sm_1, type="l", xlab="",ylab="Energy Sub Metering",  cex.axis=1, cex.lab=1)
#lines(dt,sm_2, col="red")
#lines(dt,sm_3, col="blue")
#legend("topright", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty=c(1,1), col=c("black" ,"blue", "red"), cex=1, bty="n")
#$plot(dt,grp,type="l",ylab="Global_Reactive_Power", xlab="datetime",cex.axis=1, cex.lab=1)
dev.off()
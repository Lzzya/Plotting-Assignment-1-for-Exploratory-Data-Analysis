mydata <- read.table("d:/r/household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")
mydata1 <- subset(mydata,Date >="2007-02-01"&Date <="2007-02-02")
mydata1$Time <- strptime(paste(mydata1$Date, mydata1$Time), "%Y-%m-%d %H:%M:%S")
mydata1$Global_active_power <- as.numeric(mydata1$Global_active_power)
mydata1$Sub_metering_1 <- as.numeric(mydata1$Sub_metering_1)
mydata1$Sub_metering_2 <- as.numeric(mydata1$Sub_metering_2)
mydata1$Voltage <- as.numeric(mydata1$Voltage)
mydata1$Global_reactive_power <- as.numeric(mydata1$Global_reactive_power)

plot(mydata1$Time, mydata1$Global_active_power, 
     type="l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)"
)
#1

plot(mydata1$Time, mydata1$Voltage, 
     type="l",
     xlab = "datetime",
     ylab = "Voltage"
)
#2


plot(mydata1$Time, mydata1$Sub_metering_1, 
     type="l",
     xlab = "",
     ylab = "Energy sub meeting"
)
lines(mydata1$Time,mydata1$Sub_metering_2,col="red")
lines(mydata1$Time,mydata1$Sub_metering_3,col="blue")
legend("topright",
       lty=c(1,1,1),
       legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),
       col = c("black","red","blue")
)
#3多条线图

plot(mydata1$Time, mydata1$Global_reactive_power, 
     type="l",
     xlab = "datetime",
     ylab = "Global_reactive_power"
)

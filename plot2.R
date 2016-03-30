mydata <- read.table("d:/r/household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")
mydata1 <- subset(mydata,Date >="2007-02-01"&Date <="2007-02-02")
mydata1$Time <- strptime(paste(mydata1$Date, mydata1$Time), "%Y-%m-%d %H:%M:%S")
mydata1$Global_active_power <- as.numeric(mydata1$Global_active_power)

png("plot2.png")
plot(mydata1$Time, mydata1$Global_active_power, 
     type="l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)"
     )
dev.off()

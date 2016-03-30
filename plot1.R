mydata <- read.table("d:/r/household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE)
mydata$Date <- as.Date(mydata$Date,"%d/%m/%Y")
mydata1 <- subset(mydata,Date >="2007-02-01"&Date <="2007-02-02")

hist(mydata1$Global_active_power,
     col="red",
     xlab = "Global Active Power(kilowatts)")

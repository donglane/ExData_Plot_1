rawdata <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
filterdata <- subset(rawdata,Date %in% c("1/2/2007","2/2/2007"))
x <- filterdata$Global_active_power
par(mar=c(4,4,2,2))
hist(x,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()
housefile<-"household_power_consumption.txt"
plotData<-read.table(housefile,header = T,sep = ";",na.strings = "?")
finalData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
hist(finalData$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.copy(png,file="plot1.png")
dev.off()
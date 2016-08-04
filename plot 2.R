library(plyr)
library(ggplot2)

NEI <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/summarySCC_PM25.rds")
SCC <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/Source_Classification_Code.rds")

BMDNEI <- subset(NEI,fips=="24510")

BMD <- tapply(BMDNEI$Emissions,BMDNEI$year,sum)

barplot(BMD,main="Total PM2.5 emission in Baltimore",xlab="Emissions",ylab="year")


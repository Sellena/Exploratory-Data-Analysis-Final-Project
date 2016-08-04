library(plyr)
library(ggplot2)

NEI <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/summarySCC_PM25.rds")
SCC <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/Source_Classification_Code.rds")

Emissions <- tapply(NEI$Emissions,NEI$year,sum)

barplot(Emissions,main="Total PM2.5 emission",xlab="Emissions",ylab="year")
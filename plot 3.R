library(plyr)
library(ggplot2)

NEI <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/summarySCC_PM25.rds")
SCC <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/Source_Classification_Code.rds")

BMDNEI <- subset(NEI,fips=="24510")

ggplot(BMDNEI,aes(year,Emissions,color=type))+geom_line()+ggtitle("Total emission per type in Baltimore")
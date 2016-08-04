library(plyr)
library(ggplot2)

NEI <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/summarySCC_PM25.rds")
SCC <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/Source_Classification_Code.rds")

BNEI <- subset(NEI,fips=="24510" & type=="ON-ROAD", c("Emissions", "year","type", "fips"))
BNEI <- rename(BNEI,c("fips"="city"))
BNEI$city <- "Baltimore"

LANEI <- subset(NEI,fips=="06037" & type=="ON-ROAD",c("Emissions", "year","type", "fips"))
LANEI <- rename(LANEI,c("fips"="city"))
LANEI$city <- "LA"

BvsLANEI <- as.data.frame(rbind(BNEI,LANEI))

ggplot(BvsLANEI,aes(x=year,y=Emissions))+ geom_bar(aes(fill=year),stat="identity")+facet_grid(.~city) +guides(fill=F)+ggtitle("Baltimore vs. LA: Emission from motor vehicle sources")

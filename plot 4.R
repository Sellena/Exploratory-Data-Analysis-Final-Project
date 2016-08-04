library(plyr)
library(ggplot2)

NEI <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/summarySCC_PM25.rds")
SCC <- readRDS("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/final project/Source_Classification_Code.rds")

data <- subset(SCC,select = c("SCC","Short.Name"))
NEI_SCC <- merge(NEI,data,by.x="SCC",by.y="SCC",all=TRUE)

coalcombustion <- subset(NEI_SCC,grep("coal Combustion",NEI_SCC$Short.Name,fixed=T),c("Emissions","Year","Type","Short.Name"))

#coalcombustion <- (grep("Combustion",SCC$SCC.Level.One,ignore.case = TRUE) & grep("CoalRelated",SCC$SCC.Level.Four,ignore.case = TRUE))

#combustionSCC <- SCC[coalcombustion,]$SCC
#combustionNEI <- NEI[NEI$SCC %in% combustionSCC,]

ggplot(coalcombustion,aes(year,Emissions))+geom_line()+ggtitle("Total United States PM2.5 Coal Emissions")
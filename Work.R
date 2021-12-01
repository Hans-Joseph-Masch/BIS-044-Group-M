#Load .csv data
CovidData <- read.csv("Test pennsylvania-history-covid.csv")
data.frame(CovidData)
View(CovidData)

TempData <- read.csv("Temperature History Data 2.0.csv")
data.frame(TempData)
View(TempData)

#Assign date format
CovidData$Date <- as.Date(CovidData$Date)
TempData$Date <- as.Date(TempData$Date)
CovidData$positiveCasesViral <- as.numeric(CovidData$positiveIncrease)
str(CovidData$Date)
str(TempData$Date)

#Merge Data sets
DataSet <- merge(CovidData, TempData)
View(DataSet)

#Correlate Data
cor(DataSet$Temperature, CovidData$positiveIncrease)

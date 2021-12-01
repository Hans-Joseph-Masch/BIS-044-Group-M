#Load .csv data
CovidData <- read.csv("pennsylvania-history-covid.csv")
data.frame(CovidData)
View(CovidData)

TempData <- read.csv("Temperature History Data 2.0.csv")
data.frame(TempData)
View(TempData)

#
CovidData$date <- as.Date(CovidData$date)
TempData$Date.time <- as.Date(TempData$Date.time)
str(CovidData$date)
str(TempData$Date.time)

#Find a way to make the correlation 


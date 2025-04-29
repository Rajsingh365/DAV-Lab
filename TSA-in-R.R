library(stats)
library(forecast)

url <- 'https://raw.githubusercontent.com/jbrownlee/Datasets/master/airline-passengers.csv'
data <- read.csv(url)
data$Month <- as.Date(paste0(data$Month, "-01"))
data
ts_data <- ts(data$Passengers, start = c(1949, 1), frequency = 12)

decomposition <- decompose(ts_data)
plot(decomposition)

par(mfrow=c(2,1))

acf(series, lag.max=40, main="ACF")
pacf(series, lag.max=40, main="PACF")


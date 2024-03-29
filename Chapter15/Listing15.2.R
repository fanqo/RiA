library(forecast)
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2))
ylim <- c(min(Nile), max(Nile))
plot(Nile, main="Raw time series")
plot(ma(Nile, 3), main="Simple Moving Average (k=3)", ylim=ylim)
plot(ma(Nile, 7), main="Simple Moving Average (k=7)", ylim=ylim)
plot(ma(Nile, 15), main="Simple Moving Average (k=15)", ylim=ylim)
par(opar)

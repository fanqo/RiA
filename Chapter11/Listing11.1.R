attach(mtcars)
plot(wt, mpg,
    main="Basic Scatter plot of MPG vs. Weight",
    xlab="Car Weight (lbs/1000)",
    ylab="Miles Per Gallon ", pch=19)
abline(lm(mpg ~ wt), col="red", lwd=2, lty=1)
lines(lowess(wt, mpg), col="blue", lwd=2, lty=2)

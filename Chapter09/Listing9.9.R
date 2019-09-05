library(MASS)
attach(UScereal)
y <- cbind(calories, fat, sugars)
center <- colMeans(y)
n <- nrow(y)
p <- ncol(y)
cov <- cov(y)
d <- mahalanobis(y, center, cov)
coord <- qqplot(qchisq(ppoints(n), df=p),
           d, main="Q-Q Plot Assessing Multivariate Normality",
           ylab="Mahalanobis D2")
abline(a=0, b=1)
# identify(coord$x, coord$y, labels=row.names(UScereal))
detach(UScereal)

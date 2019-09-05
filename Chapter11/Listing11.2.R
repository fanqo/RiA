opar <- par(no.readonly=TRUE)
par(mfrow=c(1,2))
t1 <- subset(Orange, Tree==1)
plot(t1$age, t1$circumference,
    xlab="Age (days)",
    ylab="Circumference (mm)",
    main="Orange Tree 1 Growth")

plot(t1$age, t1$circumference,
    xlab="Age (days)",
    ylab="Circumference (mm)",
    main="Orange Tree 1 Growth",
    type="b")
par(opar)


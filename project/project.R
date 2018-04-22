library(deSolve)

<<<<<<< HEAD
parameters <- c(a = -1, b = -10, c = 28)
state <- c(X = 1, Y = 1, Z = 1)

Lorenz <- function (t, state, parameters) {
    with(as.list(c(state,parameters)), {
        #rates of change
        dX <- a*X + Y*Z
        dY <- b * (Y-Z)
        dZ <- -X * Y + c * Y - Z
        
        list(c(dX,dY,dZ))
    })
}

times <- seq(0, 100, by = 0.01)
out <- ode(y = state, times=times, func=Lorenz, parms=parameters)
par(oma = c(0,0,3,0))
plot(out, xlab="time", ylab = "-")
plot(out[,"X"],out[,"Z"],pch=".")
mtext(outer = T, side = 3, "Lorenz model", cex = 1.5)

for (i in sample(4, replace = T)) {
    parameters <- c(a = -1/i, b = -10, c = 28)
    out <- ode(y = state, times=times, func=Lorenz, parms=parameters)
    plot(out[,"X"],out[,"Z"],pch=".")
}
=======
model <- function(t, state, parameters) {
    with(as.list(c(state)), {
        dx <- -8/3 * x + y * z
        dy <- -10 * (y - z)
        dz <- -x * y + 28 * y - z
        list(c(dx,dy,dz))
    })
}

yini <- c(x=1,y=1,z=1)
yini2 <- yini + c(1e-6, 0, 0)
times <- seq(0,30,0.01)
out <- ode(y = yini, times = times, func = model, parms = 0)
out2 <- ode(y = yini2, times = times, func = model, parms = 0)
plot(out, out2, lwd = 2, lty = 1, mfrow = c(1,3))
>>>>>>> 813b2d0597e0a837f7d018d1d79445ebe56713a4

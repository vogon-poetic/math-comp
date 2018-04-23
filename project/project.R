library(deSolve)

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

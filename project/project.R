library(deSolve)

model <- function (t, y, parms) {
    with(as.list(c(y, parms)), {
        dy1 <- -2 * y[2] * y[3]
        dy2 <- 1.25 * y[1] * y[3]
        dy3 <- -0.5 * y[1] * y[2]
        list(c(dy1, dy2, dy3))
    })
}

y <- c(N = 0.1)
parms <- c(r = 0.1, K = 10)
times <- 0:100
out <- ode(y, times, model, parms)
plot(out)

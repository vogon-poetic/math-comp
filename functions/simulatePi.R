#montecarlo simulation of pi using vector based programming

#n = number of darts
#s = seed
simulatePi <- function(n) {
    x <- runif(n, min = 0, max = 1)
    y <- runif(n, min = 0, max = 1)
    d <- sqrt((x - 0.5)^2 + (y - 0.5)^2)
    hits <- sum(d <= 0.5)
    miss <- sum(d > 0.5)
    area <- hits/n
    pi <- 4*area
    return(pi)
}

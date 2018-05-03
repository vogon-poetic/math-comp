rm(list=ls())
##simulation
##simulation iid (identical and independently distributed) uniform samples
#
##Generate a random number from 0 to 1 (inclusive):
#set.seed(12)
#runif(1)
#
##Generate 20 random numbers from 0 to 1
#runif(20)
#
##Generate 100 random numbers between 4 and 5
#runif(100, 4, 5)
#
##random integers
#sample(1:6, 3)
#sample(1:6, 7, replace = TRUE) # must use replace=true to allow duplicates

simulateIntegral <- function(a, b, n, s) {
    set.seed(s)
    x <- runif(n, a, b)
    g <- 3*(x^5) 
    
    y <- (b-a) * g
    integral <- mean(y)
    
    return(integral)
}

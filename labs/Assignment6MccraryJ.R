#Purpose: Geometric mean
# Geometric mean
# multiply(x1,x2,...,xn) ^ (1/n)
v <- c(2,3,12,12,4,2,10,34,3,6,2,5,34,2)
Assignment6Q1 <- function (x) {
    product <- 1
    n <- length(x)
    for (i in 1:length(x)) {
        product <- product * x[i]
    }
    
    return(product^(1/n))
}

#Purpose: returns the max element of a vector x
Assignment6Q2 <- function(x) {
    max.x <- x[1]
    for (i in 2:length(x)) {
        if (x[i] > x[i-1]) {
            max.x <- x[i]
        }
    }
    
    return(max.x)
}

#purpose: print squares and cubes for the first n Natural numbers.
Assignment6Q3 <- function(n) {
    cat(sprintf("number square  cube    \n"))
    for (i in 1:n) {
        cat(sprintf("%4d %6d %6d\n", i, i^2, i^3))
    }
}

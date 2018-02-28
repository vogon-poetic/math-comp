natural <- function(n) {
    x <- numeric(n)
    for(i in 1:n) {
        x[i] <- i
    }
    
    return(x)
}
#Purpose: create a function that calculates sum of natural numbers

sum.n <- function(x) {
    s <- 0
    for (i in 1:x) {
        s <- s + i
    }
    
    return(s)
}
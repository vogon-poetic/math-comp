sum.squares <- function(n) {
    s <- 0
    for(i in 1:n) {
        s <- s + i^2
    }
    
    return(s)
}

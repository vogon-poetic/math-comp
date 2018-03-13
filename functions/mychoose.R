MyChoose <- function(n, k) {
    if (0 <= k & k <= n) {
        return (factorial(n)/(factorial(k) * factorial(n - k)))
    }
}

pascal <- function(row) {
    cat(sprintf("1\n"))
    for (n in 1:row) {
        for (k in 0:n) {
           cat(sprintf("%d ", MyChoose(n,k))) 
        }
        
        cat(sprintf("\n"))
    }
}

pi <- function(n) {
    p <- 0
    for (i in 1:n) {
        p <- p + ((-1)^(i+1))/(2*i - 1)
    }
    
    return(round(p * 4, digits=10))
}

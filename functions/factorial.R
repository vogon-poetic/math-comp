fact <- function(n) {
    if (n > 1) {
        return(n * fact(n-1))
    } else {
        return(1)
    }
}

sum.n2 <- function(n) {
    if (n == 1) {
        return(1)
    } else if (n > 1) {
        return (n + sum.n2(n-1))
    }
}

sum.square2 <- function(n) {
    if (n == 1) {
        return(1)
    } else if (n > 1) {
        return (n^2 + sum.square2(n-1))
    }
}

my.exp <- function(x, n) {
    if (n == 0) {
        return(1) 
    } else if (n > 0) {
        return(my.exp(x, n-1) + (x^(n + 1))/(fact(n)))
    }
}

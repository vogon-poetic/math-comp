# A taylor series approximation of cosine
cosine <- function (x, n) {
    sum <- 0
    for (k in 0:n) {
        sum <- sum + (-1)^k * x^(2*k) / factorial(2*k)
    }
    
    return(sum)
}

fact.recursive <- function (n) {
    if (n == 1 | n == 0) {
        return(1)
    } else {
        return(n * fact.recursive(n-1))
    }
}

MyFactorial <- function(n) {
    if (n == 0 | n == 1) {
        return(1)
    } else {
        f <- 1 
        for (i in 1:n) {
            f <- f*i
        }
        
        return(f)
    }
}

MyExp <- function(x, n) {
    s<-0
    for (k in 0:n) {
        s <- s + (x^k)/factorial(k)
    }
    
    return(s)
}

sumfin <- function(n) {
    s <- 0
    for (i in 1:n) {
        s <- s + ((2*i - 1) / (2*i + 1))
    }
    
    return(s)
}




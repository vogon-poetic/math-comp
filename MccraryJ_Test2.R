Test2Q1 <- function(x,n) {
    sum <- 0
    for (i in 0:n) {
        sum <- sum + ((-1)^i)*(x^(2*i + 3)) / factorial(2*i + 3)
    }
    
    return(sum)
}

Test2Q2 <- function(n) {
    sum <- 0
    for (i in 0:n) {
        sum <- sum + (((-1)^(i-1)) * (5 + 7*i) / (7^i))
    }
    
    return(sum)
}

Test2Q3 <- function(n) {
    if (n == 0) {
        return (-5)
    } else {
        return ((((-1)^(n-1)) * (5 + 7*n) / (7^n)) + Test2Q3(n-1)) 
    }
}

Test2Q4 <- function(s,n,a,b) {
    set.seed(s)
    x <- runif(n, a, b)
    g <- ((4 * sqrt(2*pi))^(-1))*exp((-1/32)*(x-6)^2) 
    
    y <- (b-a) * g
    
    return(mean(y))
}

Test2Bonus <- function(n) {
    count <- 0
    
    if (n > 0)
        count <- 2 * toh(n-1) + 1 # since T(n) = 2*T(n-1) + 1
    
    return(count)
}

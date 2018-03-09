
Fibo <- function(n) {
    if (n == 1) {
        return(c(1))
    } else if (n == 2) {
        return(c(1,1))
    } else {
        f <- numeric(n)
        f[1] <- 1
        f[2] <- 1
        for (i in 3:n) {
            f[i] <- f[i-1] + f[i-2]
        }
        
        return(f)
    }
}

MyFibo <- function(n) {
    f1 <- 0
    f2 <- 1
    f3 <- 0
    
    if (n == 1 | n == 2 | n < 1) {
        return(1)
    } else {
        for(i in 1:n) {
            f3 <- f2 + f1
            f2 <- f1
            f1 <- f3
        }
        
        return(f3)
    }
}

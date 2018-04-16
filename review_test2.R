exp_ <- function(x,n) {
    sum <- 1
    for (i in 1:n) {
        sum <- sum + (x^i)/factorial(i)
    }
    
    return(sum)
}

series <- function(n) {
    sum <- 0
    for (i in 1:n) {
        sum <- sum + (2*i - 1)/(2*i + 1)
    }
    
    return(sum)
}

series.recursive <- function(n) {
    if (n == 1) {
        return (1/3)
    } else {
        return ((2*n-1)/(2*n+1) + series.recursive(n-1))
    }
}

int <- function(a,b,s,n) {
    set.seed(s)
    x <- runif(n, a, b)
    g <- sin(cos(x)) 
    
    y <- (b-a) * g
    
    return(mean(y))
}

roll <- function(s,n) {
    set.seed(s)
    # four sided die w/ unfair roll
    rolls <- sample(1:4, n, prob = c(.1,.2,.3,.4), replace = T)
    n.1 <- sum(rolls == 1)
    n.2 <- sum(rolls == 2)
    n.3 <- sum(rolls == 3)
    n.4 <- sum(rolls == 4)
    
    return(c(n.1,n.2,n.3,n.4))
}

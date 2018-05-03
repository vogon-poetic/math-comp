Assignment8Q1 <- function (s,n) {
    set.seed(s)
    outcome <- sample(1:4, n, replace = T, prob = c(.1,.2,.3,.4))
    face1 <- sum(outcome == 1) / n
    face2 <- sum(outcome == 2) / n
    face3 <- sum(outcome == 3) / n
    face4 <- sum(outcome == 4) / n
    
    return(c(face1,face2,face3,face4))
}

Assignment8Q2 <- function(a, b, n, s) {
    set.seed(s)
    x <- runif(n, a, b)
    g <- 2*sin(x) - 5*cos(x) 
    
    y <- (b-a) * g
    integral <- mean(y)
    
    return(integral)
}

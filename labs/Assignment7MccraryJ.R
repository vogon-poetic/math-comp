#Lab Assignment 7
#Name: John Mccrary

#purpose: find sum of 1/(sqrt(n) + sqrt(n+1)) from 1 to n
Assignment7Q1 <- function(n) {
    sum <- 0
    
    for(i in 2:(n+1)) {
        sum <- sum + 1/(sqrt(i-1) + sqrt(i))
    }
    
    return(sum)
}

#purpose: recursive solution to question 1
Assignment7Q2 <- function(n) {
    sum <- 1/(sqrt(2) + 1)
    
    if (n == 1) {
        return(sum)
    } else {
        sum <- Assignment7Q2(n-1) + 1/(sqrt(n+1) + sqrt(n))
        return(sum)
    }
}

#purpose: recursive function to return greatest common divisor
myGCD <- function(m,n) {
    if (m < 0 | n < 0) {
        # do nothing
    } else {
       if (m %% n == 0) {
           return(n)
       } else {
           return(myGCD(n, m %% n))
       }
    }
}


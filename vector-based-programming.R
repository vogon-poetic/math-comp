#vector based programming
rm(list=ls())
set.seed(1)

flips <- function(n) {
    # heads = 0, tails = 1
    outcome <- sample(0:1, n, replace = T)
    head.count <- sum(outcome == 0)
    tail.count <- n - head.count
    prob.head <- head.count/n
    prob.tail <- tail.count/n
    
    return(list(Heads = prob.head, Tails = prob.tail))
}

rolls <- function(n) {
    outcome <- sample(1:6, n, replace = T)
    prob <- numeric(6)
    labels <- c(one, two, three, four, five, six)
    for(side in 1:6) {
        prob[side] <- sum(outcome == side) / n
    }
    
    return(list(labels, prob))
}

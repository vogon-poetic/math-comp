SimulateCoin <- function(s,n) {
    set.seed(s)
    #0 = head, #1 = tail
    
    outcome <- sample(0:1, n, replace = T, prob = c(.7, .3))
    n.heads <- sum(outcome == 0)
    n.tails <- sum(outcome == 1)
    p.heads <- n.heads/n
    p.tails <- n.tails/n
    
    return(c(p.heads,p.tails))
}

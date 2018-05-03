x <- c(2,3,1,4,5,10,34,6,7,-9)
MyMax <- function(x) {
    max <- x[1]
    for (i in 1:length(x)) {
        if (max < x[i]) {
            max <- x[i]
        }
    }
    
    return(max)
}

minimum <- function(x) {
    min <- x[1]
    for (i in 2:length(x)) {
        if (x[i] < x[i-1]) {
            min <- x[i]
        }
    }
    
    return(min)
}

mysort <- function(x,cmp) {
    ret <- x[1]
    for (i in 2:length(x)) {
        if(cmp(x[i], x[i-1])) {
            ret <- x[i]
        }
    }
    
    return(ret)
}

mini <- function(a, b) {
    return (a < b)
}

maxi <- function(a, b) {
    return (a > b)
}


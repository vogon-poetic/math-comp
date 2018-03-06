is.prime <- function(p) {
    for (i in 2:(p-1)) {
        if ((p %% i) == 0) {
            return(F)
            break;
        } else if (i == (p - 1)) {
            return(T)
        }
    }
}

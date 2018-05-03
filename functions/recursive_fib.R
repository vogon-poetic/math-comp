MyFibo2 <- function(n) {
    if (n <= 1 | n == 2) {
        return (1)
    } else {
        return (fib2(n-1) + fib2(n-2))
    }
}

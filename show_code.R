
##Question 2) check if a five-digit number n is divisible by 9 
n <- as.numeric(readline("enter a positive int (n): "))
n_copy <- n
digits <- numeric(5)
for (i in 1:5) {
    digits[i] <- n %%  10
    n <- n %/% 10
}

if (sum(digits) %% 9 == 0) {
    cat(sprintf("%d is divisible by 9\n", n_copy))
} else {
    cat(sprintf("%d is NOT divisible by 9\n", n_copy))
}

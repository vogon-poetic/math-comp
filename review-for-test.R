#Purpose: review sheet answers
rm(list=ls())

##Question 1) print first n fibonacci numbers
#n <- as.numeric(readline("enter a positive int (n): "))
#f <- numeric(n)
#f[1] <- f[2] <- 1
#for (i in 3:n) {
#    f[i] <- f[i-1] + f[i-2]
#}
#
#print(f)

##Question 2) check if a five-digit number n is divisible by 9 
#n <- as.numeric(readline("enter a positive int (n): "))
#n_copy <- n
#digits <- numeric(5)
#for (i in 1:5) {
#    digits[i] <- n %%  10
#    n <- n %/% 10
#}
#
#if (sum(digits) %% 9 == 0) {
#    cat(sprintf("%d is divisible by 9\n", n_copy))
#} else {
#    cat(sprintf("%d is NOT divisible by 9\n", n_copy))
#}

#Question 3) prompt the user to enter a non-negative number, and a 
#           real number. approximate cos(x) and compare with builtin
#n <- as.numeric(readline("enter a positive int (n): "))
#x <- as.numeric(readline("enter a real number (x): "))
#y <- cos(x)
#p.x <- 0 # this is what our approximation will be stored in
#
#for (i in 0:n) {
#    
#}


# Taylor series for sin(x)
rm(list = ls())
x <- as.numeric(readline("Enter (x): "))
n < - as.numeric(readline("Enter (n): "))
sin.x <- 0

for (k in 0:n) {
    sin.x <- sin.x + ((-1)^k / factorial(2*k + 1)) * x^(2*k + 1)
    print(sin.x)
}


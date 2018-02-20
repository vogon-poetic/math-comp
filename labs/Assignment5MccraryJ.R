# Lab Assignment 5
# Question 1
# Purpose: compute series representation of pi
rm(list=ls())

#input
pi <- 0
n <- as.numeric(readline("Enter a positive integer n: "))

#computation
for (i in 1:n) {
    pi <- pi + ((-1)^(i+1))/(2*i - 1)
}

pi <- pi * 4

#output
cat(sprintf("pi is approximately equal to %.8f\n", pi))






# Question 2
# Purpose: compute series representation of 24
rm(list=ls())

#input
sum <- 0
n<-625 # given in the problem

#computation
for (i in 2:n) {
    sum <- sum + 1/(sqrt(i) + sqrt(i-1))
}

#output
cat(sprintf("The answer is %.2f\n", sum))




#Question 3
#Purpose: divisibility test for 3
rm(list=ls())

#input
ones <- 0
tens <- 0
huns <- 0
thou <- 0
ttho <- 0
n <- as.numeric(readline("Enter a positive five digit number: "))
n_copy <- n

#computation
ones <- n %% 10
n <- n %/% 10

tens <- n %% 10
n <- n %/% 10

huns <- n %% 10
n <- n %/% 10

thou <- n %% 10
n <- n %/% 10

ttho <- n %% 10
n <- n %/% 10

#output
if (sum(c(ones, tens, huns, thou, ttho)) %% 3 != 0) {
    cat(sprintf("The number %05d is not divisible by 3", n_copy))
} else {
    cat(sprintf("The number %05d is divisible by 3", n_copy))
}

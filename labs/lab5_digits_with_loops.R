rm(list=ls())
n<-12345
n_copy <- n

# five digit number gets a 5D vector
digits <- c(0, 0, 0, 0, 0)
#names <- c("ones", "tens", "hundreds", "thousands", "ten thousands")

for(i in 1:5) {
    digits[i] <- n %% 10
    n <- n %/% 10 
}

if (sum(digits) %% 3 == 0) {
    cat(sprintf("%05d is divisible by 3", n_copy))
} else {
    cat(sprintf("%05d is not divisible by 3", n_copy))
}

#Test 1
#1
rm(list=ls())

#input
a<-as.numeric(readline("Enter a number a: "))
b<-as.numeric(readline("Enter a number b: "))
c<-as.numeric(readline("Enter a number c: "))
d<-as.numeric(readline("Enter a number d: "))
e<-as.numeric(readline("Enter a number e: "))
f<-as.numeric(readline("Enter a number f: "))

#computation
answer<- (e - (a+b)/(c*d) + 2*f)

#output
cat(sprintf("The answer is %.2f", answer))


#2
#purpose: check 5-digit number divisible by 4
#input
n <- as.numeric(readline("Enter a positive five digit number: "))
n_copy <- n
digits <- numeric(5) # empty 5d vector

#computation and output
for (i in 1:5) {
    digits[i] <- n %% 10
    n <- n %/% 10
}

x <- digits[1] + 10*digits[2]

if (x %% 4 == 0) {
    cat(sprintf("%d is divisible by 4", n_copy))
} else {
    cat(sprintf("%d is not divisible by 4", n_copy))
}

#3
#purpose: pseudo random number generation
#input
a <- as.numeric(readline("Enter a positive integer a: "))
c <- as.numeric(readline("Enter a positive integer c: "))
m <- as.numeric(readline("Enter a positive integer m: "))
n <- as.numeric(readline("Enter the number of random numbers to be generated: "))

#computation
X <- numeric(n)
X[1] <- 1

for (i in 2:n) {
    X[i] <- (a*X[i-1] + c) %% m
}

#output
for(i in 1:n) {
    cat(sprintf("X[%d] = %d\n", i, X[i]))
}

#4
#purpose: sum of a series
#input
n <- as.numeric(readline("Enter a positive integer n: "))
sum <- 0

#computation
for (i in 1:n) {
    sum <- sum + ((-1)^(i+1)) * (i^2) * factorial(i+1)
}

#output
cat(sprintf("The sum of this series is %.2f\n", sum))



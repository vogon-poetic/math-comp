#purpose: computing first 'n' fib numbers
rm(list=ls())
n<-as.numeric(readline("enter a positive integer (n): "))

#computation
x <- numeric(n) # zero vector 
x[1] <- 1
x[2] <- 1

for (i in 3:n) {
    x[i] <- x[i-1] + x[i-2]
}

#output
#print(x)

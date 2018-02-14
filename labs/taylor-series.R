#Purpose: find taylor series expansion of e^x and compare w/ exact value
rm(list = ls())

#input
x<-as.numeric(readline("Enter any real number for the value of x = "))
n<-as.numeric(readline("Enter a positive integer for n = "))

#computation
s<-0
for (k in 0:n) {
    s <- s + (x^k)/factorial(k)
}

#output
cat(sprintf("e^%.2f is approximately equal to %.5f\n", x, s))
cat(sprintf("e^%.2f = %.5f", x, exp(x)))

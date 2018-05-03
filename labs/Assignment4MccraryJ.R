rm(list=ls())
#Purpose: find sum of every third element in a vector x
#input
x<-c(1,2,7,2,3,7,2,3,7,5,4,7,2,3,7,4,5,7,8,9,7)

#computation
len <- length(x)
i <- 1
sum <- 0

#for(i in seq(3,length(x), 3)) {
#  sum <- sum + x[i]
#}

while (i <= len/3) {
  sum <- sum + x[i*3]
  i <- i + 1
}

#output
cat(sprintf("The sum of every third element in a vector x is %d", 
            sum))

###QUESTION 2####
#Purpose: find taylor series expansion of sin(x) and compare w/ exact value
rm(list = ls())

#input
x<-as.numeric(readline("Enter any real number for the value of x = "))
n<-as.numeric(readline("Enter a positive integer for n = "))

#computation
sum<-0
for (k in 0:n) {
  sum <- sum + (-1)^k * x^(1 + 2*k) / factorial(1 + 2*k)
}

#output
cat(sprintf("sin(%.2f) is approximately equal to %.5f\n", x, sum))
cat(sprintf("sin(%.2f) = %.5f", x, sin(x)))

#Purpose: find taylor series expansion of cos(x) and compare w/ exact value
rm(list = ls())

#input
x<-as.numeric(readline("Enter any real number for the value of x = "))
n<-as.numeric(readline("Enter a positive integer for n = "))

#computation
sum<-0
for (k in 0:n) {
  sum <- sum + (-1)^k * x^(2*k) / factorial(2*k)
}

#output
cat(sprintf("cos(%.2f) is approximately equal to %.5f\n", x, sum))
cat(sprintf("cos(%.2f) = %.5f", x, cos(x)))

###QUESTION 4###
#Question 4

#input
x <- as.numeric(readline("Enter a real number (x): "))
n <- as.numeric(readline("Enter a positive int (n): "))
sum <- 1

#computation
for (i in 1:n) {
  sum <- sum + x^i
}

#output
cat(sprintf("h(%.2f, %d) = %.5f\n", x, n, sum))

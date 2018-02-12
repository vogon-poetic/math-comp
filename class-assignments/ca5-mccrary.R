#Name: John McCrary
#Purpose: sum of square of first n Naturals.
rm(list = ls())
#n<-as.numeric(readline("Enter a value for n: "))
#acc<-0
#
#for (i in 1:n) {
#    acc <- acc + i^2
#}
#
#cat(sprintf("The sum of the first %d squares = %d\n", n, acc))


#Purpose: Factorial up to n
n<-as.numeric(readline("Enter a value for n: "))
acc<-1

if (n == 0) {
    acc <- 1
} else {
    for (i in 1:n) {
        acc <- acc*i
    }
}

cat(sprintf("%.0f! = %.0f", n, acc))



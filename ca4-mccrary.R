#Name: John McCrary
#Purpose: prompt user to enter a positive int,
#         print only even numbers up to n.

rm(list = ls())

#Input
n<-as.numeric(readline("Enter a positive integer: "))

#Computation and output
for (i in seq(2,n,2)) {
    cat(sprintf("%d\n", i))
}

for (i in -n:n) {
    if (i > 0) {
        cat(sprintf("Coming Home!\n"))
    } else if (i < 0) {
        cat(sprintf("Not coming home!\n"))
    }
}

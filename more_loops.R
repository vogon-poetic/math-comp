#'for loop'
#Purpose: summing first n natural numbers

#input
n<-as.numeric(readline("Enter a positive integer: "))
sum_of_n<-0

#computation and output
for (i in 1:n) {
    sum_of_n <- sum_of_n+i
}

#output
cat(sprintf("sum of the first %d integers = %d\n", n, sum_of_n))

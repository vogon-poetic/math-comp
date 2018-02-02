rm(list = ls())

##Loops
##input
#n<-readline("Enter a positive integer: ")
#n<-as.numeric(n)
#
##computation and output
#for (i in seq(1,n,1)) {
#     cat(sprintf("%d\n", i))
#}

########################
#Purpose: print absolute value of a vector
x<-c(-10, -11, -4, -2, -6, 0, 6, 8, 78, 78, 45)
n<-length(x)
y<-numeric(n) # creates a vector of n zeros

for(i in 1:n) {
    if(x[i] < 0) {
        y[i] <- (-x[i])
    } else {
        y[i] <- x[i]
    }
}


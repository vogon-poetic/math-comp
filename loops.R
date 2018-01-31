rm(list = ls())

#loops

#input
n<-readline("Enter a positive integer: ")
n<-as.numeric(n)

#computation and output
for (i in seq(1,n,1)) {
     cat(sprintf("%d\n", i))
}

########################
#Purpose: print absolute value of a vector
x<-c(-10, -11, -4, -2, -6, 0, 6, 8, 78, 78, 45)
n<-length(x)

for(i in 1:n) {
    if (x[i] < 0) {
        x[i] <- (-x[i])
    }
}

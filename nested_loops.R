rm(list=ls())
m<-as.numeric(readline("enter m: "))

for(i in 1:m) {
    for (j in 1:i) {
        var <- i + j
        cat(sprintf("%d + %d = %d \n", i, j, var))
    }
}

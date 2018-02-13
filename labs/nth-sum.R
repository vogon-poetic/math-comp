#purpose: find sum of 1/3 + 3/5 + 5/7 + 7/9 + ... 
rm(list=ls())

#input
n<-as.numeric(readline("Enter a positive integer for n = "))

#computation
s<-0
for (k in 1:(n-1)) {
   s <- s + (2*k+1)/(2*k+3)
}

numerators<-seq(1,2*n,2)
denominators<-seq(3,(2*n + 1),2)

#output
cat(sprintf("The %d'th term is %d / %d", n, 
            tail(numerators, 1), 
            tail(denominators, 1)))

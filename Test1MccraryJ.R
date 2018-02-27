#Test 1
rm(list=ls())
##1
#rm(list=ls())
#
##input
#a<-as.numeric(readline("Enter a number a: "))
#b<-as.numeric(readline("Enter a number b: "))
#c<-as.numeric(readline("Enter a number c: "))
#d<-as.numeric(readline("Enter a number d: "))
#e<-as.numeric(readline("Enter a number e: "))
#f<-as.numeric(readline("Enter a number f: "))
#
##computation
#answer<- (e - (a+b)/(c*d) + 2*f)
#
##output
#cat(sprintf("The answer is %.2f", answer))


#2
#purpose: check 5-digit number divisible by 4
#input
#n <- as.numeric(readline("Enter a positive five digit number: "))
#n_copy <- n
#digits <- numeric(5) # empty 5d vector
#
##computation and output
#for (i in 1:5) {
#    digits[i] <- n %% 10
#    n <- n %/% 10
#}
#
#x <- digits[1] + 10*digits[2]
#
#if (x %% 4 == 0) {
#    cat(sprintf("%d is divisible by 4", n_copy))
#} else {
#    cat(sprintf("%d is not divisible by 4", n_copy))
#}

#3


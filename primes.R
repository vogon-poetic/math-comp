#Purpose: check if a number is prime
#input
rm(list=ls())
#number<-as.numeric(readline("Enter an integer number: "))
number<-13*19
prime<-F

for (i in 2:(number-1)) {
   if ((number %% i) == 0) {
       prime<-F
       break;
   }
}

print(prime)

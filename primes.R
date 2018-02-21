#Purpose: check if a number is prime
#input
rm(list=ls())
#number<-as.numeric(readline("Enter an integer number: "))

response <- "Y"
while(response == "Y" || response == "y") {
    number<-as.numeric(readline("Enter a positive int > 2: "))
    prime<-F
    
    for (i in 2:(number-1)) {
       if ((number %% i) == 0) {
           cat(sprintf("%d is not a prime number\n", number))
           break;
       }
    }
    
    if (i == (number - 1)) {
        cat(sprintf("%d is a prime number.\n", number))
    }
    
    response<-readline("Do you want to run again? (Y/N): ") # control statemrnt
}

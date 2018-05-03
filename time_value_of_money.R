rm(list=ls())

#Purpose: find the number of years to double investment.
#input
principle<-as.numeric(readline("Enter the principle amount: "))
rate<-as.numeric(readline("Enter the interest rate in %: "))

#computation
future_value<-principle
target_value<-2*principle
n<-0

while (future_value <= target_value) {
    future_value <- future_value + future_value*(rate/100)
    n <- n + 1
}

#output
cat(sprintf("The principle amount: $%.2f will double to $%.2f in %d years.", 
            principle, future_value, n))

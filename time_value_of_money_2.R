rm(list=ls())

#purpose: compute simple interest by months

#input
principle<-as.numeric(readline("Enter the principle amount: "))
rate<-as.numeric(readline("Enter the annual interest rate in percent: "))
y<-as.numeric(readline("Enter the number of years of investment: "))
m<-as.numeric(readline("Enter the number of months of investment: "))

#computation
balance<-principle
months <- y*12 + m

for (i in 1:months) {
    int_earned <- balance*(rate/100)/12
    balance<-balance+int_earned
}

#output
cat(sprintf("Balance after %d years and %d months = $%.2f", 
            y, m, balance))

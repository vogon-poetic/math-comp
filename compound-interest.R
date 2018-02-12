#Name: John McCrary
#Purpose: computing interest earned
rm(list=ls())

#input
pv<-as.numeric(readline("Enter principle amount: "))
r<-as.numeric(readline("Enter annual interest rate (in percent): "))
n<-as.numeric(readline("Enter number of years invested: "))
fv<-pv

#computation
for(i in 1:n) {
    fv <- fv + fv*(r/100)
}

#output
cat(sprintf(" Principle amount = $%.2f\n Future value = $%.2f\n", pv, fv))
cat(sprintf(" Interest earned over %d years = $%.2f\n", n, (fv-pv)))


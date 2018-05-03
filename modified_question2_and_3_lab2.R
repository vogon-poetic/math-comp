#Name: John McCrary
#Purpose: Convert temperature based on unit
rm(list=ls())

#Input
unit<-readline("Enter unit of temperature (F or C): ")
temp<-as.numeric(readline("Enter temperature: "))

celsius<-(temp - 32)*(5/9)
fahrenheit<-(temp * (9/5)) + 32

#Computation and Output
if (unit == "F") {
    cat(sprintf("%.2f degrees Fahrenheit = %.2f degrees Celsius", 
                temp, celsius))
} else if (unit == "C") {
    cat(sprintf("%0.2f degrees celsius = %0.2f degrees fahrenheit",
                temp, fahrenheit))
} else {
    cat(sprintf("Error: invalid unit, must enter F or C.\n"))
}

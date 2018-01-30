#Name: John McCrary
#Purpose: Convert fahrenheit to celsius

#Input
fahrenheit<-as.numeric(readline("Enter temperature in Fahrenheit: "))

#Computation
celsius<-(fahrenheit - 32)*(5/9)

#Output
cat(sprintf("%.2f degrees Fahrenheit = %.2f degrees Celsius", 
            fahrenheit, celsius))

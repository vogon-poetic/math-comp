#Name: John McCrary
#Purpose: Convert celsius to fahrenheit

#input
celsius<-as.numeric(readline("Enter temperature in celsius: "))

#computation
fahrenheit<-(celsius * (9/5)) + 32

#output
cat(sprintf("%0.2f degrees celsius = %0.2f degrees fahrenheit",
            celsius, fahrenheit))

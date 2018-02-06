#Name: John McCrary
#Lab assignment 3 
#Question 1
#Purpose: Convert temperature based on unit
rm(list=ls())

#Input
temp<-as.numeric(readline("Enter temperature: "))
unit<-readline("Enter unit of temperature (F or C): ")

#Computation and Output
if (unit == "F") {
    celsius<-(temp - 32)*(5/9)
    cat(sprintf("%.2f degrees Fahrenheit = %.2f degrees Celsius", 
                temp, celsius))
} else if (unit == "C") {
    fahrenheit<-(temp * (9/5)) + 32
    cat(sprintf("%0.2f degrees celsius = %0.2f degrees fahrenheit",
                temp, fahrenheit))
} else {
    cat(sprintf("Error: invalid unit, must enter F or C.\n"))
}




#Question 2
#Purpose: BMR and chocolate bar calculations
rm(list = ls())
#input
weight<-as.numeric(readline("Enter your weight in pounds: "))
height<-as.numeric(readline("Enter your height in inches: "))
age<-as.numeric(readline("Enter your age in years: "))
gender<-readline("Enter your gender (M for male, F for female): ")

#computation and output
if(gender == "F") {
    bmr <- 655 + (4.3 * weight) + (4.7 * height) - (4.7 * age)
    bars <- bmr / 230
    cat(sprintf("A woman with weight %0.2f pounds
                with height %0.2f inches, and age %.0f years
                should consume %.0f chocolate bars.\n",
                weight, height, age, bars))
} else if (gender == "M") {
    bmr <- 66 + (6.3 * weight) + (12.9 * height) - (6.8 * age)
    bars <- bmr / 230
    cat(sprintf("A man with weight %0.2f pounds
                with height %0.2f inches, and age %.0f years
                should consume %.0f chocolate bars.\n",
                weight, height, age, bars))
} else {
    cat(sprintf("Error: invalid gender specifier\n"))
}




#Question 3
#Purpose: Piecewise functions
rm(list = ls())
#input
boundary<-as.numeric(readline("Enter a positive boundary number: "))

#computation
x<-seq(-boundary, boundary, 0.01) # range
n<-length(x)
y<-numeric(n)

for(i in 1:n) {
    if (x[i] <= 0) {
        y[i] <- -(x[i])^3
    } else if (x[i] > 0 && x[i] <= 1) {
        y[i] <- (x[i])^2
    } else if (x[i] > 1) {
        y[i] <- sqrt(x[i])
    }
}

plot(x, y, t="l", axes=F, xlab="x values", ylab="y values")
axis(side=1, pos=0)
axis(side=2, pos=0)

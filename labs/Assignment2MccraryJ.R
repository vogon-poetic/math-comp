#Name: John McCrary
#Purpose: Display Numbers
rm(list = ls())

#Input
num<-readline("Enter a four digit number: ")
num<-as.numeric(num)

#Computation 
num_copy <- num

thousands<-num%/%1000
num<-num%%1000

hundreds<-num%/%100
num<-num%%100

tens<-num%/%10
num<-num%%10

ones<-num%/%1
num<-num%%1

#Output
cat(sprintf("The output of the nubmer %04i is the following: \n", num_copy))
cat(sprintf(" %i\n %i\n %i\n %i\n", 
            thousands, hundreds, tens, ones))






#Name: John McCrary
#Purpose: Convert temperature based on unit

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
                celsius, fahrenheit))
} else {
    cat(sprintf("Error: invalid unit, must enter F or C.\n"))
}





#Name: John McCrary
#Purpose: chocolate bar calculations

#input
weight<-as.numeric(readline("Enter your weight in pounds: "))
height<-as.numeric(readline("Enter your height in inches: "))
age<-as.numeric(readline("Enter your age in years: "))

#computation
bmr_woman <- 655 + (4.3 * weight) + (4.7 * height) - (4.7 * age)
bmr_man <- 66 + (6.3 * weight) + (12.9 * height) - (6.8 * age)

bars_woman <- bmr_woman / 230
bars_man <- bmr_man / 230

#output
cat(sprintf("A woman with weight %0.2f pounds
            with height %0.2f inches, and age %.0f years
            should consume %.0f chocolate bars.\n\n",
            weight, height, age, bars_woman))
cat(sprintf("A man with weight %0.2f pounds
            with height %0.2f inches, and age %.0f years
            should consume %.0f chocolate bars.\n",
            weight, height, age, bars_man))


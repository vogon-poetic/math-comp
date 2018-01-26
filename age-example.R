rm(list=ls())

#input
age<-as.numeric(readline("Enter your age: "))

#computation and output
if (age >= 0 && age <= 12) {
    print("You are a kid.")
} else if (age > 12 && age <= 19) {
    print("You are a teen.")
} else if (age > 19 && age <= 60) {
    print("You are an adult.")
} else if (age > 60) {
    print("Senior citizen.")
}
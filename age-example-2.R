rm(list=ls())

#input
age<-as.numeric(readline("Enter your age: "))

#computation and output
if (age < 0) {
    print("you must enter a non-negative number.")
}

if (age > 60) {
    print("You are a senior citizen")
} else if (age > 19) {
    print("You are an adult")
} else if (age > 12) {
    print("You are a teen")
} else {
    print("You are a kid")
}

rm(list=ls())
#purpose: determine gender via user input
#input
gender<-as.character(readline("Enter your gender (M or F): "))

#computation & output
if (gender == 'F' || gender == 'f') {
    print("You are female")
} else if (gender == 'M' || gender == 'm') {
    print("You are male")
} else {
    print("Please enter a valid gender identifier")
}

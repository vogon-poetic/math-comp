rm(list=ls())
#purpose: assign a letter grade to a numerical score.
#input
grade<-as.numeric(readline("Enter your grade: "))

#computation & output
if (grade < 0 || grade > 100) {
    print("Please enter a valid grade 0-100")
}

if (grade >= 90) {
    print("You got an A!")
} else if (grade >= 80) {
    print("You got an B!")
} else if (grade >= 70) {
    print("You got an C!")
} else if (grade >= 60) {
    print("You got an D!")
} else if (grade < 60 && grade >= 0) {
    print("You got an F...")
} 


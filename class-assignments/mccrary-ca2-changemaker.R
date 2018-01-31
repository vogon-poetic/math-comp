# Purpose : Changemaker
rm(list=ls())

# Input
amount <- as.numeric(readline("Enter a whole number between 1 and 99 inclusive: "))

# Computation
numberOfQuarters <- amount %/% 25
amount <- amount %% 25

numberOfDimes <- amount %/% 10
amount <- amount %% 10

numberOfNickels <- amount %/% 5
amount <- amount %% 5

numberOfPennies <- amount

# Output
cat(sprintf("Number of quarters: %d\n", numberOfQuarters))
cat(sprintf("Number of dimes: %d\n", numberOfDimes))
cat(sprintf("Number of nickels: %d\n", numberOfNickels))
cat(sprintf("Number of pennies: %d\n", numberOfPennies))

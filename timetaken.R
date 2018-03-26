################################################################################

rm(list = ls())
# Purpose: Demonstrate the time complexity of recursive functions
# We demonstrate using MyFibo1.R and MyFibo2.R using system.time()
# function

source("myFibo1.R")
source("myFibo2.R")

# Input
n <- as.numeric(readline("Enter a positive integer n: "))

# Computation
timeTakenNoRecursive <- system.time(MyFibo1(n))
timeTakenRecursive <- system.time(MyFibo2(n))
# Output
print("Time taken without recursive function")
print(timeTakenNoRecursive)
print("Time taken with recursive function")
print(timeTakenRecursive)


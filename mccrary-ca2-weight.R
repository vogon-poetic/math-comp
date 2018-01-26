rm(list=ls())

#Input
weight <- readline("Enter your weight in lbs: ")
weight <- as.numeric(weight)

#Computation
# One lb is around 2.2kgs.
mass <- weight/2.20462

#Output
cat(sprintf("Your weight in lbs: %.2f\nYour mass in kg: %.2f", weight, mass))

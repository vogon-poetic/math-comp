#Purpose: convert height from inch to cm
#Name: John McCrary
#Date: 
rm(list = ls())

#input
height_in <- readline("Height in inches: ")
height_in <- as.numeric(height_in) # must convert string value of height_in to numeric value.

#computation
height_cm <- 2.54*height_in

#output
cat(sprintf("If height is : %.2f inches, then height in 
            cm is: %.2f", height_in, height_cm))


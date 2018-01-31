#Name: John McCrary
#Purpose: Converting height from feet/inch to meter.
rm(list=ls())

#Input
cat(sprintf("Enter your height (feet part and inch part seperately)"))
height_ft<-as.numeric(readline("Enter the feet part of your height: "))
height_in<-as.numeric(readline("Enter the inches part of your height: "))

#Computation
# (1 foot = 0.3048 meters)
height_meter<-height_ft*0.3048
height_cm<-height_in*2.54

# convert cm to m and adds it to our height
height_meter<-height_meter + (height_cm/100) 

#Output
cat(sprintf("%d feet and %d inches = %0.2f in meters", 
            height_ft, height_in, height_meter))













#
# ASSIGNMENT 2
# 
#Purpose: convert weight in lbs to kg
rm(list=ls())

#Input
weight<-as.numeric(readline("Enter your weight in pounds: "))

#Computation
mass<-weight*0.453592

#Output
cat(sprintf("%d pounds = %0.2f in kilograms\n", weight, mass))













# 
# ASSIGNMENT 3
#
#Purpose: calculate BMI
#Input
cat(sprintf("Enter your height (feet part and inch part seperately)"))
height_ft<-as.numeric(readline("Enter the feet part of your height: "))
height_in<-as.numeric(readline("Enter the inch part of your height: "))
weight<-as.numeric(readline("Enter your weight in pounds: "))

#Computation
mass<-weight*0.453592

height_meter<-height_ft*0.3048
height_cm<-height_in*2.54
height_meter<-height_meter + (height_cm/100) 
BMI<-mass/(height_meter^2)

#Output
cat(sprintf(
    "The BMI of a person with height %i feet and %i inches
    and weight %i pounds, 
    or equivalently, 
    with height %.2f meters
    and mass %.2f kilograms is %.0f",
    height_ft, height_in, weight, height_meter, mass, BMI
))


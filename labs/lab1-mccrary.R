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


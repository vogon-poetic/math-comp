rm(list=ls())
library(scatterplot3d)
attach(mtcars)

scatterplot3d(hp, disp, wt, pch=16, highlight.3d = T, 
              type = "h", main = "3D Scatter Plot")


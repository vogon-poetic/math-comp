library(ggplot2)

#blank canvas
p <- ggplot(mtcars, aes(wt, mpg))

#Adding the curve
p + geom_point()

#Adding aesthetics mappings
## Colored points by number of cyl
p + geom_point(aes(colour = factor(cyl)))

## Changed shape of points based of num of cyl
p + geom_point(aes(shape = factor(cyl)))

## Change size of point based on num of cyl
p + geom_point(aes(size = factor(cyl))) # best for continuous variables

# Set aesthetics to a fixed value
p + geom_point(colour = "red", size = 3)

# Some more options
p + geom_point(shape = 8, colour = "black", fill = "white", 
               size = 4, stroke = 2)

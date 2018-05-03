rm(list=ls())
library(ggplot2)
set.seed(1)

x <- runif(1000, 0,1)
y <- runif(1000, 0,1)

df <- data.frame(x,y)

graphOutput <- ggplot(data=df, aes(x,y))
print(graphOutput+geom_point())

simulatePiGraphics <- function(s,n) {
    set.seed(s)
    x <- runif(n)
    y <- runif(n)
    distance <- sqrt((x-0.5)^2 + (y-0.5)^2)
    approximation <- 4 * sum(distance <= 0.5)
    
    #Plot with ggplot
    library(ggplot2)
    region <- rep("S", n)
    circle <- which(distance <= 0.5)
    region[circle] <- "C"
    
    df2 <- data.frame(x=x, y=y, region=region)
    gout <- ggplot(data = df2, aes(x=x,y=y))
    gout <- gout + geom_point(aes(colour = region))
    return(gout)
}

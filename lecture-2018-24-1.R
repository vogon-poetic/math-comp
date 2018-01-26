rm(list=ls())
# Purpose
# - Plot sin(x) and cos(x) together
# - Adjust the axes to the traditional form

x <- seq(-2*pi, 2*pi, 0.01)
y1<- sin(x)
y2<- cos(x)
plot(x, y1, type = "l", col = "blue", axes = F)

# creating axes passing through origin.
axis(1, pos = 0)
axis(2, pos = 0)

# plotting y2 in same window as y1
# superimposing graphs

lines(x, y2, col="red")

# Adding legend to the bottom left of the graph
legend("bottomleft", legend=c("sin(x)","cos(x)"), 
       lty=c(1,1), col=c("blue","red"))


rm(list = ls())

#Purpose: Plotting y = sin(x)
#input
x <- seq(-2*pi, 2*pi, 0.01)

#computation
n <- length(x)
y <- numeric(n)

for(i in 1:n) {
    y[i] <- sin(x[i])
}

#output
plot(x, y, t="l", axes=F)
axis(1,pos=0)
axis(2,pos=0)

#purpose: quadradic equation solver.
rm(list=ls())

#input
a <- as.numeric(readline("Enter coefficient of x^2: "))
b <- as.numeric(readline("Enter coefficient of x: "))
c <- as.numeric(readline("Enter constant term: "))

#computation
disc <- (b^2 - 4*a*c)

if (a == 0) {
    x1 <- -c/b
} else if (disc >= 0) {
    x1 <- -b + sqrt(disc) / 2*a
    x2 <- -b - sqrt(disc) / 2*a
}

#output
if (a == 0) {
    cat(sprintf("It is a linear equation with root at %7.2f", x1))
} else if (disc >= 0) {
    cat(sprintf("First root: %7.2f \n", x1))
    cat(sprintf("Second root: %7.2f \n", x2))
} else {
    cat(sprintf("Equation contains complex roots."))
}


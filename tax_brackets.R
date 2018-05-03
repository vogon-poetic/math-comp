#purpose: tax-bracket
#input
rm(list=ls())

income <- as.numeric(readline("Enter your taxable income: "))
rate <- c(.1, .15, .25, .28, .33, .35, .396)
top <- length(rate)
bracket <- c(9225, 37450-9225, 90750-37450, 189300-90750, 411500-189300, 413200-411500)
taxes <- numeric(top)
taxes.total <- 0
#computation
for (i in 1:top) {
    if (i == top) {
        taxes[i] <- income * rate[i]
    } else {
        if (income > bracket[i]) {
            taxes[i] <- rate[i] * bracket[i]
            income <- income - bracket[i]
        } else {
            taxes[i] <- rate[i] * income
            break;
        }
    }
}

taxes.total <- sum(taxes)

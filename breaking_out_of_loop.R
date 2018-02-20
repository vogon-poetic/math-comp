#Breaking out of loops

#input
n<-as.numeric("Enter a natural number (> 10): "))

#computation
total<-0

for(i in 1:n) {
    total <- total + i
    if (i > 5) {
        break; #must use a semicolon
    }
}

#output
cat(sprintf("Total is %d\n", total))

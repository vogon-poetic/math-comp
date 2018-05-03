#multiplication table (1 to 10)

#input - none

#computation and ouptut
#cat(sprintf("   |   1   2   3   4   5   6   7   8   9  10\n"))
#cat(sprintf("--------------------------------------------\n"))

for (i in 1:10) {
#    cat(sprintf("%2d | ", i))
    
    for (j in 1:10) {
        cat(sprintf("%3d ", i*j))
    }
    
    cat(sprintf("\n"))
}

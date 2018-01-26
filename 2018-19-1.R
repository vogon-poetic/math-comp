rm(list = ls())
#Logical expressions
#   The output of a logical expression is either "TRUE" or "FALSE".
#   lt : <
#   gt : >
#   lte: <= 
#   gte: >= 
#   eq : == (Note: only use for integer values)
#   ne : != 
#   AND: &&
#   OR : ||
#   mod: %%

x <- seq(10,100,2)
print(x)
print(x>90)
print(x>=90)

#Count x-values gt 90
print(sum(x>90))

#Another way to create a sequence
y <- 1:10
print(which(y%%4 == 0))

#Find the indecies of the var x that are divisible by 4
print(which(x %% 4 == 0))

#Print values of x that are visible by 4
print(x[which(x %% 4 == 0)])






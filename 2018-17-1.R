# Section 2.3 & 2.4 (Functions and Vectors)

# Create a variable to contain the first 20 natural numbers.
x <- seq(from=1, to=20, by=1)
print(x)

y <- seq(1, 20)
print(y)

# x and y are known as vectors or arrays.
# adding the first 20 natural numbers: 
print(sum(x))

#Task: create a vector starting from -100 to 100 with an increment of 2 and store
#      it in a vector named v.

v <- seq(-100, 100, 2)

#Task: create a vector which contains every odd number between 1 & 100.
#      store it in a vector named x1.
x1<-seq(1,100,2)

#To get a number stored in a particular index in a vector, use brackets
x1[4]
x1[10]

#task: find the square of the first 100 natural numbers.
x2 <- (seq(1,100))^2

#task: print sum of x2
print(sum(x2))

#Create a vector without pattern or sequence.
x3 <- c(2, 3, 5, 7, 11, 13, 17, 19)
print(x3)
x3[5]

#to find number of elements in a vector
print(length(x3))

#combining two vectors and store them in a new vector
x4<-c(1,2,3,4,5,6)
x5<-c(7,8,9,10,11,12)

x6 <- c(x4, x5)
print(x6)

#add 10 to every element in x4
print(x4+10)

#multiply every number in x4 by 1/2 and print
print(x4*(1/2))

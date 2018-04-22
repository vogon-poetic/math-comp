# Double pendulum system of ODEs: 
# 
# The system itself is complicated and tedious but the actual implementation of 
# it, once we've used a computer algebra system to find a closed form of the 
# angular accellaration for each rod, is pretty straightforward
# 
# Derivation of ddtheta1 and ddtheta2 using Newton's method can be found here: 
# https://www.myphysicslab.com/pendulum/double-pendulum-en.html
# 
# This is a purely numerical solution - a true solution could give the position
# at any point in time. My code is only calculating the little changes in theta1
# and theta2
# ____________________
# |       U          |
# |       |\         |
# |       | \        |
# |       |__\       |
# |       v   O      |
# |          /|      |
# |         / |      |
# |        /__|      |
# |       O   v      |
# |__________________|
# 
# g = gravitational constant
# r1, r2 = length of rods 1 & 2
# m1, m2 = masses at the ends of rods 1 & 2
# t1, t2 = angle of rods 1 and 2 
rm(list=ls())

g <- 5
r1 <- r2 <- 5  # rods are equal length
m1 <- m2 <- 10 # equal masses too
t1 <- pi / 2 # initial theta_1
t2 <- pi / 2 # initial theta_2
dt1  <- 0 # angular velocity of theta_1 
dt2  <- 0 # angular velocity of theta_2

# initial position of masses (x1,y1) and (x2,y2)
x1 <- r1 * sin(t1)
y1 <- -r1 * cos(t1)
x2 <- x1 + r2 * sin(t2)
y2 <- y1 * r2 * cos(t2)

timestep <- seq(0,100,by=0.01)
X1 <- X2 <- Y1 <- Y2 <- numeric(length(timestep))

for (step in 1:length(timestep)) {
    
    # truly ugly formulas for this system, don't read too far into these
    # this chunk is going to combine to form ddt1
    n1 <- -g * (2 * m1 + m2) * sin(t1)
    n2 <- -m2 * g * sin(t1 - 2*t2)
    n3 <- -2 * sin(t1 - t2) * m2
    n4 <- dt2 * dt2 * r2 * dt1 * dt1 * r1 * cos(t1 - t2)
    d  <- r1 * (2 * m1 + m2 - m2 * cos(2 * t1 - 2 * t2))
    ddt1 <- (n1 + n2 + n3 * n4) / d
    
    # this chunk is going to combine to form ddt2
    n1 <- 2 * sin(t1 - t2)
    n2 <- (dt1 * dt1 * r1 * (m1 + m2))
    n3 <- g * (m1 + m2) * cos(t1)
    n4 <- dt2 * dt2 * r2 * m2 * cos(t1 - t2)
    ddt2 <- (n1 * (n2 + n3 + n4)) / d
    
    # update the velocity based on the accel
    dt1 <- dt1 + ddt1
    dt2 <- dt2 + ddt2
    
    #update the position based on the velocity
    t1 <- t1 + dt1
    t2 <- t2 + dt2
    
    # update coordinates based on the angles
    x1 <- r1 * sin(t1)
    y1 <- -r1 * cos(t1)
    x2 <- x1 + r2 * sin(t2)
    y2 <- y1 * r2 * cos(t2)
    
    # insert updated x1, y1, etc into the vector
    X1[step] <- x1
    Y1[step] <- y1
    X2[step] <- x2
    Y2[step] <- y2
}
    
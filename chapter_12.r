# ---------------------
# Chapter 12: Graphics
# ---------------------

# Plotting a graph: plot(x,y)
plot(c(1,2,3), c(1,2,4))

# Plot function work in stages
plot(c(-3,10), c(-1,10), type = "n", xlab="x", ylab="y")	# Draw an empty graph. Type n means nothing.

# abline() to add lines
x <- c(1,2,3)
y <- c(1,3,8)
plot(x,y)
lmout <- lm(y ~ x)			# Linear regression
abline(lmout)				# Draw regression line
abline(c(2,1))				# This draws a line y=x+2

# lines(x,y) to add lines
lines(c(1.5,2.5,6),c(3,3,8))	 
plot(x,y,type="l")			# Connect dots style

# Keep old plots
hist(x)
x11()
hist(y)

# point() function to add points
points(1:10,1:10)
example(legend)			# Read example for legend

# Adding text to the graph
text(2.5,4,"abc")		# “abc” at the point (2.5,4) in the graph with b in the center

# Use locator to pinpoint places with a mouse
locator(1)
text(locator(1),"nv=75")	# Using together with the text function

# Setting character size for text
text(2.5,4,"abc",cex = 1.5)			# cex = character expand / shrink

# Range of axis can be changed
ylim=c(0,90000)				# Specifies a range on the y-axis of 0 to 90000

# Using the curve function to draw curves
f <- function(x) return(1-exp(-x))
curve(f,0,2)
polygon(c(1.2,1.4,1.4,1.2),c(0,0,f(1.3),f(1.3)),col="gray")		# Draw a polygon(x,y,col='color')
polygon(c(1.2,1.4,1.4,1.2),c(0,0,f(1.3),f(1.3)),density=10)		# Draw with shaded lines 10 lines per inch

# Smoothing lines
lines(lowess(testscores))
lines(loess(testscores))

# Graphing explicit functions
g <- function(t) { return (t^2+1)^0.5 }  # define g()
x <- seq(0,5,length=10000)  # x = [0.0004, 0.0008, 0.0012,..., 5]
y <- g(x)
plot(x,y,type="l")

curve((x^2+1)^0.5,0,5)			# same as the plot function for graphing equations
curve((x^2+1)^0.5,0,5,add=T)	# add to existing graph

# Plotting 3-dimensional graph
library(lattice)					# Load the lattice library
a <- 1:10
b <- 1:15
eg <- expand.grid(x=a,y=b)			# Creates a data frame from a*b
eg$z <- eg$x^2 + eg$x * eg$y 		# Define the z component value
wireframe(z ~ x+y, eg)				# Draw 3 dimensional graph












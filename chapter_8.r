# -------------------------------------------
# Chapter 8: Doing Math and Simulations in R
# -------------------------------------------

# Math functions
exp()		# Exponential function, base e
log()		# Natural Logarithm
log10()		# Log base 10
sqrt()		# Square root
abs()		# Absolute value
sin()		# Sine function
cos()		# Cosine function
min()		# Minimum value in a vector
max()		# Maximum value in a vector
which.min()	# Index of min value in a vector
which.max()	# Index of max value in a vector
pmin()		# Pair wise minimum
pmax()		# Pair wise maximum
sum()		# Sum of all elements in vector
prod()		# Product of all elements in vector
cumsum()	# Culmulative sum of elements in vector
cumprod()	# Culmulative product of elements in vector
round()		# Round to closest integer 
floor()		# Round down to integer
ceiling()	# Round up to integer
factorial()	# Factorial function

# Function minimization/maximization
nlm(function(x) return(x^2-sin(x)), 8)		# Newton Raphson method with guess number 8

# Differentiation and integration
D(expression(exp(x^2)),"x")
integrate(function(x) x^2,0,1)

# Statistical distributions
dnorm()			# Density/pmf
pnorm()			# cdf
qnorm()			# Quantiles
rnorm()			# Random numbers

dchisq()
pchisq()
qchisq()
rchisq()

dbinom()
pbinom()
qbinom()
rbinom()


rchisq(1000,df=2)	# 1000 random data pts in Chi square distribution with 2 d.f.
qchisq(0.95,2)		# Calculate 95th percentile of chi-square distribution
qchisq(c(0.5,0.95),df=2)	# Get 50th and 90th percentile

# Sorting
x <- c(13,5,12,5)
sort(x)
x <- sort(x)

# Order
order(x)	# Get indices of sorted values

# Linear algebra operations on vectors and matrices
y <- c(1,3,4,10)
2*y
y

crossprod(1:3, c(5,12,13))		# Multiplication of a 1x3 and 3x1 vector

# Matrix
# ( 1  1)(x1) = (2)
# (-1  1)(x2) = (4)
a <- matrix(c(1,1,-1,1),nrow=2,ncol=2)
b <- c(2,4)
solve(a,b)
solve(a)					# Calculate the inverse of the matrix

t()			# transpose
qr()		# QR decomposition
chol()		# Cholesky decomposition
det()		# Determinant
eigen()		# Eigenvalues/Eigenvectors
diag()		# Extracts a diagonal of a square matrix
sweep()		# Numerical analysis sweep operations

m <- matrix(c(1,7,2,8), nrow=2)
dm <- diag(m)
dmm <- diag(dm)
diag(3)

# Set operations
x <- c(1,2,5)
y <- c(5,1,8,9)
union(x,y)
intersect(x,y)
setdiff(x,y)
setdiff(y,x)
symdiff(x,y)
setequal(x,c(1,2,5))
2 %in% x
2 %in% y
choose(5,2)

# Simulation Programming in R
# Coin toss
x <- rbinom(100000,5,0.5)		# 5 is the number of trials, with p = 0.5, n = 100000
mean(x >= 4)

# Other random functions
rnorm()
rexp()
runif()
rgamma()
rpois()


















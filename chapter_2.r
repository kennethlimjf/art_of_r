# -------------------
# Chapter 2: Vectors
# -------------------

# R variable types are called modes
mode('hello')     # character
mode(3)           # numeric
mode(c(1,2,3))    # numeric
mode(list(u=2, v="abc"))    # list
mode(rbind(c(1,3), c(2,4))) # numeric
mode(data.frame(list(kids=c('Jack','Jill'), ages=c(12,10)))) # list

# Classes
class('hello')     # character
class(3)           # numeric
class(c(1,2,3))    # numeric
class(list(u=2, v="abc"))    # list
class(rbind(c(1,3), c(2,4))) # matrix
class(data.frame(list(kids=c('Jack','Jill'), ages=c(12,10)))) # data.frame

# Deleting and adding vector elements
# Vectors are like arrays, you can't insert elements in between
# Recreate a new vector and insert new element like the following:
x <- c(1,2,3) 				# Original
x <- c(x[1:2], 4, x[3]) 	# New vector

# Obtain length of a vector
length(x)

# Writing for loops for Vectors
loop_fn <- function(x) {
  for(i in 1:length(x)){

  }
}

# Arrays and matrices are vectors too
x <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
x + c(1,2)

# Applying operations on 2 vectors required both to be equal length
# Concept: Recycling
c(1,2,4) + c(6,0,9,20,22)			# same as below
c(1,2,4,1,2) + c(6,0,9,20,22)	

# Vector Indexing
y <- c(1.2,3.9,0.4,0.12)
y[c(1,2)]			# Get elements 1 and 2
y[2:4]				# Get elements 2 to 4
y[-1]				# Exclude first element
y[1:length(y)-1]	# Get first to 2nd last element
y[-length(y)]		# Exclude last element

# Creating vectors with range
1:10

# Creating vectors with sequence
seq(from=12, to=30, by=3)

# Loops with seq, a better way to loop instead of using range
# seq evaluates to NULL when x has no elements
loop_fn <- function(x){
	for(i in seq(x)){
		# Code here
	}
}

# Repeating vectors - rep(x, times) / rep(x, each=n)
rep(c(3,8),5)
rep(c(3,8), each=5)

# Checking conditions on vectors using any() and all()
x <- 1:10
any(x > 8)
any(x > 88)
all(x > 0)
all(x > 1)

# Vectorized Operations - effective way to achieve speed in R
# Vectorized meaning a function is applied individually to each element
u <- c(5,2,8)
v <- c(1,3,9)
u > v

w <- function(x) return (x+1)		# w is a vectorized function
f <- function(x,c) return((x+c)^2)	# f is a vectorized function
w(u)
sqrt(1:9)							# sqrt is a vectorized function

# NA and NULL Values
# Note that: NULL is a special value in R with no mode
x <- c(88,NA,12,168,13)
mean(x)				# Returns NA
mean(x, na.rm=T)	# Returns mean value

x <- c(88,NULL,12,168,13)
mean(x)				# Returns mean value

z <- NULL				# Using NULL to build up vectors starting from "empty"
for(i in seq(1:10)){
	z <- c(z,i)
}

# Filtering
z <- c(5,2,-3,8)
w <- z[z*z > 8]
j <- z*z > 8
">"(z*z,8)			# The equivalent of the above
z[j]				# Returns the filtered vector

z <- c(5,2,-3,8)
z[z > 3] <- 0		# Replace all the x > 3 with 0

x <- c(6,1:3,NA,12)
x[x > 5]
subset(x,x > 5)		# Subset removes NA

which(x > 5)		# Returns position of elements satisfying the condition

# Vertorized ifelse
x <- 1:10
y <- ifelse(x%%2==0, 5, 12) 		# %% is the mod operator


# Vector Element Names
x <- c(1,2,4)
names(x) <- c('a', 'b', 'c')
x['c']





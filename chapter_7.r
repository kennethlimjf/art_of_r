# ------------------------------------
# Chapter 7: R Programming Structures
# ------------------------------------

# Control Statements
# For Loops
for(i in x){
	# Code here...
}
for(i in x) print n^2

# While Loops
i <- 1
while(i < 10){
	i <- i+1
}

# Repeat Loops
i <- 1
repeat {
	i <- i + 1
	if(i > 10) break
}

# Using next to skip the rest of the loop and proceed to the next iteration
sim <- function(nreps) {
   commdata <- list()
   commdata$countabsamecomm <- 0
   for (rep in 1:nreps) {
      commdata$whosleft <- 1:20
      commdata$numabchosen <- 0
      commdata <- choosecomm(commdata,5)
      if (commdata$numabchosen > 0) next
      commdata <- choosecomm(commdata,4)
      if (commdata$numabchosen > 0) next
      commdata <- choosecomm(commdata,3)
	}
   print(commdata$countabsamecomm/nreps)
}

# for loops with vectors
for (fn in c("file1","file2")) print(scan(fn))

# Get: get() can be used to retrieve objects by their variable names
for (m in c("u","v")) {
	z <- get(m)
	print(lm(z[,2] ~ z[,1]))
}

# If-else
if(x==2){
	y <- 3
} else {
	y <- 4
}
y <- if(x == 2) x else x+1

# Arithmetic operations
x+y 	      # Addition
x-y		   # Subtraction
x*y 	      # Multiplication
x/y 	      # Division
x^y 	      # Exponential
x%%y 	      # Modulo
x%/%y 	   # Integer Division
x==y 	      # Test for equality
x<=y 	      # Test for less than equal to
x>=y 	      # Test for more than equal to
x&&y 	      # Boolean AND for scalars
x||y 	      # Boolean OR for scalars
x&y 	      # Boolean AND for vectors
x|y 	      # Boolean OR for vectors
!x 	      # Boolean NOT

# AND operators
x <- c(TRUE,FALSE,TRUE)
y <- c(TRUE,TRUE,FALSE)
x&y 			# Return a vector of the resulting logical AND
x&&y 			# Return a scalar based on AND result of first element of vectors

# TRUE, FALSE, T, F, 1 and 0
(TRUE == 1)
(FALSE == 0)
(0 == F)
(1 == T)
(1 < 2) * (2 > 3)		# Evaluates as 1 * 0 = 0 (FALSE)

# Functions are objects
g <- function(x) {
	return(x+1)
}
formals(g)			# Returns the arguments in function
body(g)				# Returns the expression of the function

# Environment and scope issues
w <- 12
f <- function(y){
   d <- 8
   h <- function(){
      return(d*(w+y))
   }
   print(ls.str())
   return(h())
}
environment(f)       # Displays environment of a function
ls()                 # Displays variables in global environment
                     # Calls from within the function ls() returns local variables
                     # To navigation aorund environments in ls():
                     # ls(envir=parent.frame(n=1)), where n is represents how many frames to go up
ls.str()             # Displays variables and its structure in the global environment
f(1)

# Functions have no side-effects
# Consider the following example:

w <- 12              # w at global level
f <- function(y){
   d <- 8
   w <- w + 1        # w is a local copy here, does not touch global
   y <- y - 2
   print(w)
   h <- function() {
      return(d*(w+y))
   }
   return(h())
}

# Writing upstairs
two <- function(u) {
   u <<- 2*u         # Writes to super environment
   z <- 2*z
}
x <- 1
z <- 3

two <- function(u) {
   assign("u",2*u,pos=.GlobalEnv)      # Another way to write to specific environment
   z <- 2*z
}

# Recursion
qs <- function(x) {
   if (length(x) <= 1) return(x)       # Base case
   pivot <- x[1]
   therest <- x[-1]
   sv1 <- therest[therest<pivot]
   sv2 <- therest[therest>=pivot]
   sv1 <- qs(sv1)
   sv2 <- qs(sv2)

   return(c(sv1,pivot,sv2))
}
qs(c(5,1,2,4,7,2,5,8))

source("xyz.r")      # Loads a R file 

# Anonymous functions
y <- apply(z,1,function(x) x/c(2,8))






































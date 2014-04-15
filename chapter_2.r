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
    # Code here...

  }
}
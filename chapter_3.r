# --------------------
# Chapter 3: Matrices
# --------------------

# Matrices are vectors with columns and rows.
# However, vector is not a matrix.

# Creating a matrix
x <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
x
y <- matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
y
z <- matrix(c(1,2,3,4,5,6), nrow=3)
z
a <- matrix(c(1,2,3,4,5,6), nrow=3, byrow=T)
a

# Linear Algebra operations
x <- matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
x
y <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
y

x %*% y 			# Matrix multiplication
3 * x				# Scalar multiplication
y+y					# Matrix addition

# Matrix Indexing
x[,2:3]				# Get all rows, columns 2 to 3
x[1,]				# Get first row, all columns

# Assigning values to matrix
y <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
x <- matrix(c(11,12,13,14), nrow=2)

y[c(1,3),] <- x
y

# Filtering on matrices
x <- matrix(c(1,2,3,4,5,6), nrow=3, ncol=2)
x[ x[,2] >= 3 , ]		# Select rows where the column value is more than or equal to 3

# Since matrix are vectors, we can apply vector operations
which(x > 2)

# Using apply on matrices
# apply(m, dimcode, f, fargs)
# dimcode=1, applies function to rows
# dimcode=2, applies function to columns

f1 <- function(x){
	x/2;
}
z <- matrix(c(1,2,3,4,5,6), nrow=3)
t(apply(z, 1, f1))


# Exercise: Write a single function to find max for each row of a matrix
findmaxs <- function(data) {
	findmax <- function(datarow) {
		print(datarow)
		return(max(datarow))
	}
	return(apply(data,1,findmax))
}

data <- matrix(c(1,2,3,1,2,3,4,1,5,5,1,5,1,9,2), ncol=5)
data
maxs <- findmaxs(data)

# Adding and deleting matrix rows and columns
# Note: Using rbind and creating new matrices in a loop produces time-consuming memory allocation for each new matrix.
#       Create a new large matrice with empty spaces to avoid creating new matrices.
one <- c(1,2)
x <- matrix(c(1,2,3,4,5,6,7,8), nrow=4)
y <- cbind(one, y)

m <- matrix(c(1,2,3,4,5,6,7,8), ncol=4, byrow=T)
n <- rbind(one, m)

# To delete rows/columns, do reassignment
x <- matrix(c(11,12,13,14), nrow=2)
x <- x[1, ]				# Keep row 1, this is a vector returned.

# Avoiding dimension reduction
# In times when selecting subsets of data, we get back a vector instead of a matrix
# E.g. x is a 4x4 matrix, selecting the 3rd row returns a vector.
# Use the drop option to avoid dimension reduction and get a matrix
x <- matrix(c(11,12,13,14), nrow=2)
x[2, , drop=F]

# Changing vectors to matrices
x <- c(1,2,3,4,5,6)
y <- as.matrix(x)			
y <- t(y)					# transpose if required

# Naming matrices rows and columns
x <- matrix(c(11,12,13,14), nrow=2)
rownames(x)								# Returns NULL since no names
rownames(x) <- c('Male', 'Female')
colnames(x) <- c('Going', 'Not Going')































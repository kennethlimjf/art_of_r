# -----------------
# Chapter 4: Lists
# -----------------

# Lists are referred to as recursive vectors
j <- list(name="Joe", salary=55000, union=T)

# List indexing
j[['name']]
j[[1]]
j$name

# Adding and deleting list elements
j$company <- "ABC Company"		# Adding
j$company <- NULL				# Removing
length(j)						# Length

# Accessing list components and values
names(j)					# Get names
ulj <- unlist(j)			# Get vector from list

# Functions on lists
lapply(list(1:3,25:29), median)			# list apply
sapply(list(1:3,25:29), median)			# simplified apply

# Recursive lists
x <- c( list(a=1,b=2,c=list(d=5,e=9)) )
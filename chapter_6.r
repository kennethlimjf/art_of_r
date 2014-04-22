# -----------------------------
# Chapter 6: Factor and Tables
# -----------------------------

# Chapter functions:
createDataFrame <- function(){
	d <- data.frame(list(
					gender=c("M","M","F","M","F","F"),
					age=c(47,59,21,32,33,24),
					income=c(55000,88000,32450,76500,123000,45650)
					))
	return(d)
}

createTable <- function(){
	fl <- list(	c(5,12,13,12,13,5,13),
			c("a","bc","a","a","bc","a","a") )
	return(table(fl))
}


# Factors and levels
x <- c(5,12,13,12)
xf <- factor(x)			# Make x a factor
str(xf)					# Shows the structure of factor x

# Defining levels
# Values not found in levels cannot be added to the dataset
xff <- factor(x, levels=c(5,12,13,88))		# Explicitly defining future new levels

# Common functions used with factors
# Given that we want to find the mean ages of groups in a dataset:
# we can use the function tapply(x,f,g)
# where x is the dataset, f is the factor and g is the function to be applied
ages <- c(25,26,55,37,21,42)
affils <- c("R","D","D","R","U","D")
tapply(ages, affils, mean)

# Calculating mean with more factors (Vectors)
d <- createDataFrame()
d$over25 <- ifelse(d$age>25,1,0)
tapply(d$income,list(d$gender,d$over25),mean)

# split() performs the spliting of a dataset according to a factor
# split(x,f)
ages <- c(25,26,55,37,21,42)
affils <- c("R","D","D","R","U","D")
split(ages,affils)

dataset <- createDataFrame()
split(dataset, dataset$gender)

# by() function is similar to tapply() in a sense that both arguments are data, factor and function.
# However, the by() function applies to objects rather than vectors.
d <- createDataFrame()
by(d, d$gender, function(x) { return(lm(x$income ~ x$age)) } )

# Working with tables
# The table() function counts the occurance of various combinations of 2 or more factors.
u <- c(22,8,33,6,8,29,-2)
fl <- list(	c(5,12,13,12,13,5,13),
			c("a","bc","a","a","bc","a","a") )
tapply(u,fl,length)			# Using this produces a table with NA values.
table(fl)					# table function produces the same results above, with correct 0 values instead.

# Operations on tables
t <- createTable()
t[1,]						# Select first row
t[,2]						# Select second column
t/5 						# Perform scalar multiplication
dimnames(t)					# Get the names for factors/dimensions in tables
addmargins(t)				# Add total rows to table

# Aggregate and Cut function
# The aggregate function applies the tapply() function on each variable in a group
d <- createDataFrame()
aggregate(d[,-1],list(d$gender),mean)

# Binning: The cut function can be used to generate bins.
# Bin are defined in semi-open intervals (i1, i2], (i2, i3], etc...
d <- createDataFrame()
bin <- seq(from=20,to=60,by=20)
d$agebin <- cut(d$age,bin, label=FALSE)


# Summary
# apply(matrix/data_frame, 1=row/2=col, vectorized function)
# lapply(list, function for objects in list), results in list
# sapply(list, function for objects in list), results in vector
# tapply(vector, vector, vectorized function)
# by(object/data frame, vector, object function)
# aggregate(object/data frame, list, vectorized function)




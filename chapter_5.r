# -----------------------
# Chapter 5: Data Frames
# -----------------------

# Data frame are heterogenous analogs of matrices.
# Creating data frames
kids <- c("Jack","Jill")
ages <- c(12,10)
d <- data.frame(kids,ages,stringsAsFactors=FALSE)

# Accessing data frames
d[1,]		# Selecting a row returns a data frame
d[,1]		# Selecting a column returns a vector
d$kids		# Selecting a column returns a vector
d[2]		# Selecting second column like this returns a data frame

# Extracting data frames
dataset <- iris			# Use iris as data set
dataset[5:10,]			# Extract rows 5 - 10
dataset[5:10,5]			# Extract rows 5 - 10, column 5
dataset[5:10,5, drop=FALSE]		# Extract rows 5 - 10, column 5, keep data frame

dataset[dataset$Sepal.Length > 7.5, ]	# Extract rows where sepal length > 7.5
subset(dataset, Sepal.Length > 7.5)

# Recap: Ignoring NA values when applying functions in vectors
x <- c(1,NA,3)
mean(x)				# Produces NA
mean(x, na.rm=T)	# Produces 2

# Extracting complete cases from dataset
kids <- c('Jack',NA,'Jillian','John')
ages <- c(22,33,44,NA)
dataset <- data.frame(kids,ages)

x <- dataset[complete.cases(dataset), ]		# Extract only rows which are complete

# Using rbind and cbind on data frames.
# Works only if length is equivalent.
kids <- c("Jack","Jill")
ages <- c(12,10)
country <- c('US','SG','HK')
d <- data.frame(kids,ages,stringsAsFactors=FALSE)
y <- rbind(d,list('Laura',19))
z <- cbind(y, country)

# Creating new columns from existing columns on data frame
dataset <- iris
dataset$Sepal.Diff <- dataset$Sepal.Length - dataset$Sepal.Width
dataset$One <- 1 			# Create a column of ones
head(dataset)				# Display first few rows of dataset

# apply function on data frames
apply(dataset,1,max)

# Merge datasets (inner join)
kids <- c('Jack','Jill','Jillian','John')
states <- c('CA','US','SG','HK')
ages <- c(12,10,15,16)

d1 <- data.frame(kids,states)
d2 <- data.frame(ages,kids)

merge(d1,d2)

#


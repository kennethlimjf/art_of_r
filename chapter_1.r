# Create a vector. 'c' here stands for concatenate.
x <- c(1,2,4)
x

# C can be used to concatenate vectors.
q <- c(x, x, 9)
q

# Subsetting on datasets/vectors
x[2:3]

# Calculate mean and standard deviation of x
mean(x)
sd(x)

# Get list of data sets
# data()

# Get the mean of Nile
print('Mean of Nile: ')
mean(Nile)
print('SD of Nile: ')
sd(Nile)

# for loop
for(i in x){
  print(i)
}

# Structure - shows the internal structure of any R object.
str(hist(Nile))

# Example function
example(persp)
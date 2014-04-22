# -------------------------
# Chapter 10: Input/Output
# -------------------------

# Use scan() to read a vector from file or keyboard
scan("z1.txt")
scan("z1.txt",what="")					# character mode
x2 <- scan("z3.txt",what="",sep="\n")	# character mode, newline delimiter

# Use readline() to read a single line from keyboard
w <- readline()
w <- readline('With prompt: ')

# Printing to screen
print("abc")
cat("abc\n")
cat("abc",x,"ab","xyz\n")

x <- c(5,12,13,8,88)
cat(x,sep=c(".",".",".","\n","\n"))

# Reading data frame or matrix from a file
z <- read.table("z",header=TRUE)			# Read into a data frame

x <- matrix(scan("x"),nrow=5,byrow=TRUE)	# Read into a matrix

read.matrix <- function(filename) {
   as.matrix(read.table(filename))
}

# Given the file:
# John 25
# Mary 28
# Jim 19

z1 <- readLines("z1")
# [1] "John 25" "Mary 28" "Jim 19"

# Introduction to connections
c <- file("z1","r")			# open file z1 in read mode
readLines(c,n=1)			# Read one line from buffer
readLines(c,n=1)			# Read another line from buffer

while(TRUE) {
	rl <- readLines(c,n=1)
	if( length(rl) == 0 ){
		print('reached the end')
		break
	} else {
		print(rl)
	}
}

seek(con=c,where=0)			# Rewind to beginning
close(c)					# Close the file connection

# Accessing from remote machines via URLs
uci <- "http://archive.ics.uci.edu/ml/machine-learning-databases/"
uci <- paste(uci,"echocardiogram/echocardiogram.data",sep="")
ecc <- read.csv(uci)

# Writing data frame to file
kids <- c("Jack","Jill")
ages <- c(12,10)
d <- data.frame(kids,ages,stringsAsFactors=FALSE)
write.table(d,"kds")

# Writing a matrix to file
write.table(xc,"xcnew",row.names=FALSE,col.names=FALSE)

# Cat can be used to write to a file
cat("abc\n",file="u")
cat("de\n",file="u",append=TRUE)

# writeLines() to write to a file
c <- file("file1","w")
writeLines(c("abc","de","f"),c)
close(c)

# Other read/write related functions
file.info()		# Gives file size, creation time, directory-versus-ordinary file status
dir()			# Returns a character vector listing the names of all the files in the directory
file.exists()	# Returns a Boolean vector indicating whether the given file exists
getwd()			# Used to determine or change the current working directory.
setwd()





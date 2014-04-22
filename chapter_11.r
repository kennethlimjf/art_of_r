# --------------------------------
# Chapter 11: String Manipulation
# --------------------------------

# Searching for string pattern using grep(pattern, x)
grep('Pole',c('Equator','North Pole','South Pole'))		# Returns the index of elements that contain pattern

# Length of a string
nchar('this is a string')

# Concatenating string with paste()
paste('North','Pole')				# Concatenate with default delimiter as whitespace
paste('North','Pole',sep='')		# Concatenate with blank delimiter
paste('North','Pole',sep='.')		# Concatenate with . delimiter

# Printing with format
sprintf('This is a float: %f.', 5)
sprintf('This is a integer: %d.', 5)
sprintf('This is a string: %s.', 'String')

# Substring function
substring('Equator',3,5)

# Str Split used to return a list of split characters
strsplit("6-16-2011",split="-")

# Regular Expression can be used to find the index of a pattern in a string
regexpr('uat','Equator')				# Returns the first instance
gregexpr("iss","Mississippi")			# Returns all instances

# Regular expressions in other functions
grep('[au]',c('Equator','North Pole','South Pole'))		# Any string that contains a or u
grep('o.e',c('Equator','North Pole','South Pole'))		# Any string that conatins the pattern o.e
	
grep(".",c("abc","de","f.g"))			# This returns an incorrect result
grep("\\.",c("abc","de","f.g"))			# The period is escaped by a backslash which is escaped by another backslash

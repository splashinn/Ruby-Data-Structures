# Ruby Notes

# String interpolation

a = 1
b = 4
puts "The number #{a} is less than #{b}"


# Searching in a String

# Checking if the string contains a certain word:
"Hey what's up Kyle?".include?"Kyle"

# Checking if the string starts with a certain word:
"Ruby is awesome".start_with?"Ruby"

# Checking if the string ends with a certain word:
"I love Ruby on Rails".end_with?"Rails"

# Finding the index of a letter:
"Woah, I never knew that!".index "W"


# String case change

# Making a string uppercase:
"i am a string".upcase 

# Making a string lowercase:
"I AM A STRING".downcase

# Swap the case of each character:
"i Am A sTrInG".swapcase


# Splitting strings:

# Splitting a string to words:
"Split me into seperate words!".split " "


# Concatenating Strings:

"Ruby".concat(" On Rails")


# Replacing a substring:

# Replacing I with We:
"I should look into your problem when I get time".sub("I", "We")

# To replace all occurences of use gsub:
"I should look into your problem when I get time".gsub("I", "We")

# Replacing all vowels with the number 1:
"RubyOnRails".gsub(/[aeiou]/, "1")

# Match letters when you don't know exactly what you're looking for:
"Ruby is awesome".match(/ ./)


# Boolean expressions:

# Combining Expressions:
age >= 23 && (name == 'Bob' || name == 'Jill')

# Negating expressions:
! (name == 'Kyle')


# if..else construct:

# if..else example:
def check_sign(number)
	if number > 0
		"#{number} is positive"
	else
		"#{number} is negative"
	end
end

# Using elsif:
def check_sign(number)
	if number > 0
		"#{number} is positive"
	elsif number == 0
		"#{number} is 0"
	else number < 0
		"#{number} is negative"
	end
end

# Unless example:
age = 10 
unless abe >= 18
	puts "Sorry, you have to be 18 to enter."
end

# The ternary operator:
def check_sign(number)
	number > 0 ? "#{number} is positive" : "#{number} is negative"
end


# Loops in Ruby

# Infinite loops:
loop do 
	puts "This loop will be executed forever."
end

# Break an infinite loop:
loop do
	monk.meditate
	break if monk.nirvana?
end

# Run a block of code N times:
5.times do 
	puts "Kyle"
end

# Another example:
def ring(bell, n)
	n.times do
		bell.ring
	end
end


# Arrays

# Empty arrays:
[]

Array.new

# Building an array:
[1, 2, 3, 4, 5]

# Looking up data in arrays:
[1, 2, 3, 4, 5][2] # would return 3

# Array indexes can also be looked up from the end of the array using negative numbers:
[1, 2, 3, 4, 5, 6][-2]

# Growing arrays:
[1, 2, 3, 4, 5] << "woot"

[1, 2, 3, 4, 5].push"woot"

# Transforming arrays:
[1, 2, 3, 4, 5].map {|i| i + 1}

# Filtering the elements of an array:
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|number| number % 2 == 0} # selects all the even numbers

names = ["Kyle", "Tina", "Nipsey", "Oslit", "Orphious"]
names.select {|word| word.length > 5}

# Deleting elements
[1, 3, 4, 5, 6, 7].delete 5

[1, 2, 3, 4, 5, 6, 7, 8].delete_if{|i| i < 4}

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].delete_if{|i| i % 2 == 0}



# Iterations

# For loops:
array = [1, 2, 3, 4, 5]
for i in array
	puts i
end # prints all values in array


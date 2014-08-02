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


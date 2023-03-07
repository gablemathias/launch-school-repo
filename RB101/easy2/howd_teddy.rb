# randomly generates and prints teddys age
# PEDAC process

# Problem
# Generate and Print Teddys Age
# His age is RANDOM
# The random number should be between 20 and 200

# Input / Output 
# Output is a random number between 20 and 200

# Examples
# output: Teddy is 69 years old!
#         Teddy is 32 years old!
#         Teddy is 123 years old!

# Data Structure
# A range between 20 and 200 (20..200)
# Structure to print the value interpolated

# Algorithm - Mental Model
# 1. Create an object with the random number generated
# 2. Output a string with the randomized value inside it as a string

# Useful methods/classes
# Random#rand #to_s #to_i

# Code


10.times do 
  age = rand(20..200)
  
  puts "Teddy is #{age} years old!"
end

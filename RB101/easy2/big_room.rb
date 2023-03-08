# two inputs
# one output

# Problem
## Ask a user for the length and width of a room
## The output should be a display of the area of the room in both square meters
## and square feet

# Example
## Enter the length of the room in meters:
## 10
## Enter the width of the room in meters:
## 7
## The area of the room is 70.0 square meters (753.47 square feet).

# Data Structure 
# The body of the text that will be displayed
# A square meter converted in square feet
# 1 sm == 10.7639 sf

# Algorithm
# Ask the user for the length of the room and store the value
# Ask the user for the width of the room and store the value
# Multiply length for width and store the resulting value (square meter)
# Multiply the square meter value stored to 10.7639 (square feet)
# Display the resulting area

# Useful methods and ideas
# gets, chomp, to_s, to_f, 

puts "Enter the length of the room in meters:"
room_length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
room_width = gets.chomp.to_f

square_meter = room_length * room_width
square_feet = (square_meter * 10.7639).round(2)

puts "The area of the room is #{square_meter} square meters (#{square_feet} square feet)."
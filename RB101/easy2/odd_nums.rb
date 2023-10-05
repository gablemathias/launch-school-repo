# Print all odd numbers from 1 .. 99 inclusive
# each number on a separate line

# Example
# 1..11
# 1
# 3
# 5
# 7
# 9
# 11

# Data Structure
# Range of the numbers with 1 and 99 included
# Check divisability by 2 to determine if odd
# Can also use the odd method

# Algorithm
# Loop through the range of numbers
# if dividing number by 2 have a remainder, print it
# else go to next number

# Code
(1..99).each do |n|
  if n % 2 > 0
    puts n
  end
end

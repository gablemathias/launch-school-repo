# Write a method that takes one integer argument, which may be positive, negative,
# or zero. This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.
# We can use the odd method from the library

def is_odd?(number)
  number % 2 == 1
end

def is_odd?(number)
  number.remainder(2) != 0
end

puts is_odd?(-3)
puts is_odd?(2)
puts is_odd?(0)
puts is_odd?(3)
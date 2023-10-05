# Asks the user to enter an integer greater than 0
# Then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer

# Example
# If 5 is the number and we want the sum of the numbers
# 1 + 2 + 3 + 4 + 5 => 15
# The sum of the integers between 1 and 5 is 15.

# Data Struct
# check if valid integer, > 0 ?, is_a? Integer
# check if valid letter 's' for sum, 'p' for product
# reduce to sum or product the numbers between 1 and the number chosen (included)

# Algorithm
# Ask user to enter a number greater than 0 and check it
# Ask user if he wants a sum or products of the numbers
# Do the calculation
# Print the resulting value

number = ''
loop do
  puts "Please enter an integer greater than 0:"
  number = gets.chomp.to_i # it returns 0 if its a string or wtf
  break if number > 0
end
result = 0
choice = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  str = gets.chomp
  case str
  when 's'
    choice = 'sum'
    result = (1..number).reduce(&:+)
    break
  when 'p'
    choice = 'product'
    result = (1..number).reduce(&:*)
    break
  else
    puts "Invalid choice, try again or CTRL-C to exit"
  end
end
puts "The #{choice} of the integers between 1 and #{number} is #{result}."

# Takes 1 argument, a positive integer
# Returns a string of alternating 1s and 0s
# Always start with 1
# The length of the string should match the given integer

# def stringy(size)
#   "".ljust(size, '10')
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def stringy(size, default = 1)
  numbers = []

  size.times do |idx|
    idx += 1 if default == 0
    number = idx.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0)

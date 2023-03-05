# A method that takes a positive integer (input)
# return that number with its digits reversed

def reversed_number(num)
  splitted_number = num.to_s.split('')
  reversed = ''
  num_size = splitted_number.length

  num_size.times do |n|
    reversed += splitted_number.pop
  end
  reversed.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1

# Logical solution using methods

def reversed_number(num)
  string = num.to_s
  reversed_str = string.reverse
  reversed_str.to_i
end
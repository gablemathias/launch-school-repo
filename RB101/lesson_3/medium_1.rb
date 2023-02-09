# 1.
str = 'The Flintstones Rock!'
# my solution
10.times { |n| puts str.rjust(str.size+n) }
# solution 1
10.times { |number| puts(" " * number) + "The Flintstones Rock!" }

# 2.
# puts "the value of 40 + 2 is " + (40 + 2)
# The error occurs cause we're trying to add a Integer to a String
# One way is convert the integer to str after the sum:
puts "the value of 40 + 2 is " + (40 + 2).to_s
# The other is interpolate the value inside the string:
puts "the value of 40 + 2 is #{40 + 2}"

# 3.
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if  number % divisor == 0
    divisor -= 1
  end
  factors
end

# 4.
# Yes, Instead of mutating the buffer object, she's creating a new object
# inside the method scope and return this new object instead.

# 5.
# The problem is that Ben didn't define a parameter to use the limit variable
# as an argument on the method, so the variable is not inside the method scope.
# to fix it:
limit = 15
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1,15)
puts "result is #{result}"

# 6.
34

# 7.
# Yes, He messed with the family's data because using a each block, the inner
# scope has access to the outer scope, so it was possible for him to
# assign new values to the hash values of the munsters data.

# 8.
'paper'

# 9.
"no"

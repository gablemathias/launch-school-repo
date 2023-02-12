arr = [1, 2, 3, 4]

counter = 0
sum = 0
loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end

puts "your total is #{sum}"

str = "hello"

# The do...end block has an inner scope that can access the var
# str on the outer scope. But the outer scope can't access
# variables initialized inside the block

loop do
  puts str
  a = 'something'
  puts a # inside the inner scope we can output a
  str = 'world' # You can change the variable inside the inner scope
  break
end

# puts a # => undefined local variable or method 'a' on main:Object
puts str # 'world'
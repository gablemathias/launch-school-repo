def value(num)
  puts num
  num
end

puts value(3) + value(5) * value(7)

# In an arithmetic expression ruby first evaluates everything from left-to-right
# before calling any operator. After that it evaluates its operands
# using the precedence order.
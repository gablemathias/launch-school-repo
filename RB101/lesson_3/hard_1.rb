# 1.
# When an if statement initiliaze a variable, even when it's not validated
# because of a false statement, that variable is initialized as nil
# When you initialize a local variable within a if clause, even if that if clause
# doesn't get executed, the local variable is initialized as nil

# 2.
# The last line puts "hi there"
# That's because the informal_greeting is a reference to the original object.
# Using String#<< modify the object that was called, so the original object
# is changed.

# 3.
# A) "one is: one"; "two is: two"; "three is: three"
# B) "one is: one"; "two is: two"; "three is: three"
# C) "one is: two"; "two is: three"; "three is: one"
# On the last example it modifies/mutates the original object using the
# String#gsub! method.

# 4.
# An IP address should have 4 components separated by dots
def dot_separated_ip_address?(input_string)
  return false unless input_string.count('.') == 3

  dot_separated_words = input_string.split(".")
  dot_separated_words.all? { |word| is_an_ip_number?(word) }
end

# Solution alternative
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

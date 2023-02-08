# 1.
# 1 2 2 3

# 2.
# If you use ! or ? after at the end of the method name when defining the method,
# it will just be part of the method name and not ruby syntax.
#
# The bang "!" character before something inverts the value,
# so if a value evaluates as true, it turns out falsy, and vice-versa
# after a value, the bang character normally is used to denotates a destructive
# method, meaning that this method mutates the caller/change the original value.
# 2.1 => != is a signal that compares two values to be different, if they
# are different, it evaluates as true, otherwise, false.
# 2.2 => !user_name returns the boolean false
# 2.3 => words.uniq! means that the method is destructive, so it will iterate
# through the words array and will mutate the array, changing the original value
# returning the original value modified
# 2.4 =>
# 2.5 => When you put double bang "!!" before a value, if it isn't nil or false,
# it will iterate through the value evaluating to false and after that to true
# and returning true.
# ? : is the ternary operator for if...else
# != means not equals
# !! is used to turn an object to their boolean equivalent
# ! is used to turn an object to their opposite boolean

# 3.
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# 4.
# delete_at(1) -> use the index to delete/remove the corresponding value from the arr
# delete(1) -> remove all the occurrencies of a given value, 1 in this case
# they remove and return the removed value.

# 5.
(10..100).include?(42)
(10..100).cover?(42)

# 1.
# a and c objects refers to the same object_id because c was initialized
# to the object referenced by a
# never rely on the specific value of the id

# 2.
# Integers are immutable, so they always have the same object id.
# The value of the object cannot be mutated.
# In Ruby, each integer is a single immutable object
# Any operation on an integer simply returns a new integer object

# 3.
# It will display My string looks like this now: pumpkins
# The method don't mutate the referenced value, it creates a new object reference
# inside the method scope and don't change the pointed variable
# It will display My array looks like this now: ["pumpkins", "rutabaga"]
# The method used Array#<< mutates the referenced value, so the array is changed
# by it.

# 4.
# Now the string is mutated and is assigned a new value to the array argument
# that came inside the parameters. It didn't alter the original object value
# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins"]

# 5.
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

# 6.
def color_valid(color)
  color == "blue" || color == "green"
end

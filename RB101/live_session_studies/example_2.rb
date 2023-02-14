def amethod(param)  # param = str # assignment
  param += " world" # param = param + " world" -> reassignment -> new object came to life here
  # param + " world"   # string concatenation String#+ is a method
  # param.+(" world") => can be written like this but it's gonna be hard to read
  param << " world" # string mutation 
end

str = "hello"
amethod(str)

p str

a = "hello" # variables point to objects, objects are things that actually live up in memory 
b = a       # two variables one object, variables are pointing to the same object

# a = "not here" # here you reassign the variable a to point to another object

b << " world"

# ----- 2 variables, 1 object

puts a 
puts b

a += b # reassignment a = a + b

a = "hey" # reassign a to point another object
b << " universe" # modify the object pointed to b, resulting 'hello world universe'

# ----- 2 variables, 2 objects

puts a 
puts b 
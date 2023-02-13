def amethod(param)
  param += " world" # param = param + " world" -> reassignment 
  param + " world"   # string concatenation String#+ is a method
  # param.+(" world") => can be written like this but it's gonna be hard to read
  param << " world" # string mutation 
end

str = "hello"

p str

amethod(str)

p str
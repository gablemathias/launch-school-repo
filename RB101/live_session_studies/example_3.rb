def prefix(str)
  "Mr. " + str # prepend and returns a new str
end

name = 'joe'
name = prefix(name) # We can reassign the name variable using the returned value of the method

# Mutate an object permanently is a little dangerous... => "Mr. " << str 

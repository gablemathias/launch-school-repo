# ask user name
# greet the user
# if user yells ("Gabe!"), the programs yells back

# Example
# What's your name? Bob
# Hello Bob.

# What's your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

print "What's your name? "
name = gets.chomp

if name[-1] == "!"
  puts "HELLO #{name[...-1].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

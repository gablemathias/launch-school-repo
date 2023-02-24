=begin
-- Understand the Problem
- What it asks for?
It asks for a simple game with a story template with blanks for words.
Then me, or another player construct a list of words and place them into
the story.

- input
noun, verb, adject, adverg

- output
the story utilizing the inputs

- rules
The user must input all the 4 values
All of the inputs needs to be valid strings:
They can't be empty and must contain alphabetic characters (check with regex)
The input needs to be converted to lowercase
There needs to be a story template

-- Modelling / Examples
1. Inputs:

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Output:

Do you walk your blue dog quickly? That's hilarious!

2. Inputs:

Enter a noun: Cat
Enter a verb: COok
Enter an adjective: RED
Enter an adverb: fast

Do you cook your red cat fast? That's hilarious!

-- Data Structure
A story template (A string) where I fill the gaps with the given inputs
  - Using interpolation I can fill the gaps with the valid strings
Create a method to validate the string

-- Scratchpad
Useful methods: gets, chomp, match, =~, empty?

-- Algorithm
- Create a method that validates the input values
  - check if it's empty
  - check if its a valid character using regex /[0-9\W\_]/
  - Loop through the question break if it's a valid value
  - if it's not valid, ask for the user to insert a valid value.
  else:
  - convert to lowercase
  - assign to a variable
  - Go to the next question.
- After answering all the questions
- Create the story template
- insert into the story the
answers.

Output the story created after the inserts.

=end

def valid?(str)
  return false if str.empty?
  return false if str =~ /[0-9\W\_]/
  true
end

noun = ''
verb = ''
adjective = ''
adverb = ''

loop do
  print("Enter a noun: ")
  noun = gets.chomp.downcase
  break if valid?(noun)
  puts("You must enter a valid noun")
end

loop do
  print("Enter a verb: ")
  verb = gets.chomp.downcase
  break if valid?(verb)
  puts("You must enter a valid verb")
end

loop do
  print("Enter a adjective: ")
  adjective = gets.chomp.downcase
  break if valid?(adjective)
  puts("You must enter a valid adjective")
end

loop do
  print("Enter a adverb: ")
  adverb = gets.chomp.downcase
  break if valid?(adverb)
  puts("You must enter a valid adverb")
end

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

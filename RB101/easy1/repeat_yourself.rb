# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(str, number)
	number.times do
		puts str
  end
end

repeat('Hello', 3)
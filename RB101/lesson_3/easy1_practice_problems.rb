# Question 1
# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # => "1\n2\n2\n3"


# Question 7
a = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array
# In order to make this nested array in an un-nested array, I can use the Array#flatten!
# flatten! takes self and turns it into an un-nest array. This is different than the flatten method
# without the exclamation mark, that instead of returning self, returns a new array object. 

a.flatten! # => ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

# Question 8 
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
# with Hash#rassoc we search for the key-value pair using the value as the argument
# with Hash#assoc we search for the key-value pair using the key as the argument
flintstones = flintstones.rassoc(2)
flintstones = flintstones.assoc("Barney")
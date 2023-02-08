# 1.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?('Spot') # => false, can also use include or member

# 2.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!()
munsters_description.capitalize!()
munsters_description.downcase!()
munsters_description.upcase!()

# 3.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

additional_ages.each { |k,v| ages[k] = v }
# optimal:
ages.merge!(additional_ages)

# 4.
advice.include?('Dino')
advice =~ /Dino/
advice.match?('Dino') # Note that this is not a perfect solution, as it would match any substring with Dino in it.

# 5.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# easier way to write this array
flintstones = %w(Fred Barney Wilma Betty Bambam Pebbles)

# 6.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino')
flintstones << 'Dino'

# 7.
flintstone.push('Dino','Hoppy')
flintstones.concat(%w(Dino Hoppy))

# 8.
advice.slice!('Few things in life are as important as ')
advice.slice!(0, advice.index('house'))

# bonus
new_advice = advice.slice(0, advice.index('house'))

# 9.
statement = "The Flintstones Rock!"
statement.count('t')
statement.scan(/t/).length

# 10.
title = "Flintstone Family Members"
title.center(40)

## Problem
# When the user will retire
# How many years she has to work till retirement

# Input:
# Integer -> Age
# Integer -> Age of Retirement 

# Output:
# String -> When will retire
# String -> How many years left to work

## Example:
# Input: 30, 70
# Output: The year is 2016, The retire will be in 2056
#         Only 40 years of work to retire.

## D & A
# Ask the user for its age and save it
# Ask the user for the age it wants to retire and save it
# Get the present Year
# Subtract the desired retire age with the current age to get the amount of years
# Sum with the present year to get the future year
# Print the present year and future year of retirement
# Print the amount of years precisely to retire

def desired_retirement
  print "What's your age? "
  age = gets.chomp.to_i
  print "At what age would you like to retire? "
  goal_age = gets.chomp.to_i
  
  current_year = Time.now.year
  
  required_years = goal_age - age
  retirement_year = current_year + required_years
  
  puts "It's #{current_year}. You will retire in #{retirement_year}."
  puts "You have only #{required_years} years of work to go!"
end 

desired_retirement

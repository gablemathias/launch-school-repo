# two arguments: positive integer and boolean
# calculates the bonus of a given salary if boolean is true
# if true the bonus is half the salary
# else the bonus is 0.

def calculate_bonus(salary, has_bonus)
  has_bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

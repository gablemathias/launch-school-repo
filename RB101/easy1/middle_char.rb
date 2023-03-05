def center_of(str)
  center = str.size / 2

  return str[center - 1, 2] if str.size.even?
  str[center]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
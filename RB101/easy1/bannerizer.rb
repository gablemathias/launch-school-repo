# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  box_size = str.size + 2
  horizontal_length = "-" * box_size
  vertical_length = " " * box_size
  horizontal_line = "+#{horizontal_length}+"
  vertical_line = "|#{vertical_length}|"

  puts(horizontal_line)
  puts(vertical_line)
  puts("| #{str} |")
  puts(vertical_line)
  puts(horizontal_line)
end

print_in_box('')

print_in_box('Something in the rain')

# def print_in_box(message)
#    horizontal_rule = "+#{'-' * (message.size + 2)}+"
#    empty_line = "|#{' ' * (message.size + 2)}|"

#    puts horizontal_rule
#    puts empty_line
#    puts "| #{message} |"
#    puts empty_line
#    puts horizontal_rule
# end

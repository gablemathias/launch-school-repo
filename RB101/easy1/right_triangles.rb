# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# n numbers of stars corresponding to the triangle diagonal size
# 

# def triangle(n)
#   star = "*"

#   n.times do |idx|
#     idx += 1
#     star_triangle = star * idx
#     puts star_triangle.rjust(n)
#   end
# end

# solution without using String#rjust

def right_triangle(n)
  stars = 1
  spaces = n - 1

  n.times do
    puts (" " * spaces) + ("*" * stars)
    spaces -= 1
    stars += 1
  end
end

def left_triangle(n)
  stars = 1
  spaces = n - 1

  n.times do
    puts ("*" * stars) + (" " * spaces)
    spaces -= 1
    stars += 1
  end
end

def bottom_left_triangle(n)
  stars = n
  spaces = 0

  n.times do
    puts ("*" * stars) + (" " * spaces)
    spaces += 1
    stars -= 1
  end
end

def bottom_right_triangle(n)
  stars = n
  spaces = 0

  n.times do
    puts (" " * spaces) + ("*" * stars)
    spaces += 1
    stars -= 1
  end
end

right_triangle(5)
left_triangle(5)
bottom_left_triangle(5)
bottom_right_triangle(5)

# In order to display the triangle in every corner...we can set a parameter, in order to choose the corner
# top-left, top-right, bottom-left, bottom-right (tl, tr, bl, br)
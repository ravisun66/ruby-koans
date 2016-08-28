# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  begin
  	raise TriangleError if a <= 0 or b <= 0 or c <= 0
  	sides = [a,b,c]
  	max_val = sides.max
  	sides.slice!(sides.index(max_val))
  	sum_of_remaining_two = sides.inject(&:+)
  	raise TriangleError if sum_of_remaining_two <= max_val
  end
  if a == b and b == c
  	:equilateral
  elsif a == b or b == c or c == a
  	:isosceles
  elsif a != b and b!=c and c!=a
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

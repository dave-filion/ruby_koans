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
	sides = [a, b, c]

	if sides.any? {|side| side == 0} 
		raise TriangleError, "can't have 0 length side"
	end

	if sides.any? { |side| side < 0}
		raise TriangleError, "can't have side length < 0"
	end

	if a + b <= c || b + c <= a || a + c <= b
		raise TriangleError, "nope"
	end

	if sides.uniq.count == 1
		:equilateral
	elsif sides.uniq.count == 2
		:isosceles
	else
		:scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

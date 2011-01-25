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
  # validation
  validate_triangle(a,b,c)
  # calculate type of triangle
  if a == b
    if b == c
      return :equilateral
    end
      return :isosceles
  end
  if b == c || a == c
      return :isosceles
  end
  return :scalene
end

def validate_triangle(a,b,c)
  unless a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a
    raise TriangleError, %{The sides of the triangle are invalid: Every side must have a length bigger than 0 and
        the triangle must adhere to the 'triangle inequality' principle}
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

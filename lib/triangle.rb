class Triangle
  attr_accessor :a, :b, :c

#Each argument is a length of one of the three sides of the triangle.

  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c
      :equilateral
    else a == b || c == b || a == c
      :isosceles
    elsif a != b && c =! b && a =! c
      :scalene



  end

  class TriangleError < StandardError

  end

end

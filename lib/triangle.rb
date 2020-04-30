class Triangle
  attr_accessor :a, :b, :c

#Each argument is a length of one of the three sides of the triangle.

  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind
#The sum of the length of two sides of a triangle must be greater than the third.
    if a <= 0 || b <= 0 || c <= 0 ||
      a + b <= c || b + c <= a || a + c <= b
      begin
        raise TriangleError
      rescue TriangleError
    else a == b && b == c
      :equilateral
    else a == b || c == b || a == c
      :isosceles
    elsif a != b && c =! b && a =! c
      :scalene
    end



  end

  class TriangleError < StandardError
    def message
      "The sum of the length of any two sides of a triangle must be greater than the third."
    end
  end

end

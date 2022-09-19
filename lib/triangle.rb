class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
    raise TriangleError unless [a, b, c].all?(&:positive?) && (a + b > c && a + c > b && b + c > a)
  end

  class TriangleError < StandardError
  end

end

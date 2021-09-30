class Triangle

  attr_accessor :all_sides

  @all_sides = []
  
  def initialize(a, b, c)
    @all_sides = [a, b, c]
    @all_sides.sort!
  end

  def kind
    if @all_sides.any?{ |side| side <= 0 } || ( @all_sides[0] + @all_sides[1] <= @all_sides[2] )
      raise TriangleError
    elsif @all_sides.uniq.length == 1
      :equilateral
    elsif @all_sides.uniq.length == 2
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end

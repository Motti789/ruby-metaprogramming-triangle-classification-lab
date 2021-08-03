class Triangle
  attr_reader :base, :side, :height
  

  def initialize(base, side, height)
    @base = base
    @side = side
    @height = height
    
  end
  
  
  def kind
    if base == side && side == height && > 0
      :equilateral
    elsif base == side || side == height || base == height & > 0
      :isosceles
    elsif base != side || side != height || base != height & > 0
      :scalene
    else 
      raise TriangleError
    end  
  end
   
    

   class TriangleError < StandardError
    "This is not a triangle"
   end


end

class Triangle
  attr_reader :base, :side, :height
  

  def initialize(base, side, height)
    @base = base
    @side = side
    @height = height
    
  end
  
  
  def kind
    if base == side && side == height
      :equilateral
    elsif base == side || side == height || base == height 
      :isosceles
    elsif base != side || side != height || base != height
      :scalene
    else 
      base || side || height < 0
      raise TriangleError
    end  
  end
   
    

   class TriangleError < StandardError
    "This is not a triangle"
   end


end

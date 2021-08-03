class Triangle
  attr_reader :base, :height, :side
  

  def initialize(base, height, side)
    @base = base
    @height = height
    @side = side
  end
  
  
  def kind
   :equilateral
   
  end  

  # class TriangleError < StandardError
  #   # triangle error code
  # end


end

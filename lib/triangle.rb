class Triangle
  attr_reader :base, :side, :height
  

  def initialize(base, side, height)
    @base = base
    @side = side
    @height = height
    
  end

  def valid_tri?
    [base, side, height].each  {|size| if size < 0 raise TriangleError}
  end    

  
  
  def kind
    if base == side && side == height && base == height 
      :equilateral
    elsif base == side || side == height || base == height 
      :isosceles
    elsif base != side || side != height || base != height  
      :scalene
    else 
      base < 1 || side < 1 || height < 1
      raise TriangleError
    end  
  end
   
    

   class TriangleError < StandardError
    "This is not a triangle"
   end


end

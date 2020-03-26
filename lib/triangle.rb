class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @triangles_side = []
    @triangles_side << side_1
    @triangles_side << side_2
    @triangles_side << side_3
end

def valid?
  sum_one_two = @triangles_side[0] + @triangles_side[1]
  sum_one_three = @triangles_side[0] + @triangles_side[2]
  sum_two_three = @triangles_side[1] + @triangles_side[2]
  
  if (@triangles_side.none? |side| side <= 0) &&
    (sum_one_two > @triangles_side[2]) && (sum_one_three > @triangles_side[1]) && (sum_two_three > @triangles_side[0])
    return true 
  else 
    return false 
  end 
end 

  def kind 
   if valid? 
    if @triangles_side.uniq.length == 1 
      return 
      :equilateral
    elseif 
      @triangles_side.uniq.length == 2 
      return 
      :isosceles
    else 
      return 
      :scalene
    end 
  end 
    begin 
    raise TriangleError 
    rescue TriangleError => error 
    puts error.message
  end 
end 


class TriangleError < StandardError 
end 

end 
  
  

  
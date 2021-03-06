class Array
  #Traversal Only Answer
  def spiral
    outer_array_num=0
  	inner_array_num=0		
  	direction='r'			
  	total_element_num = total_elements(self)
  	spiral_array = Array.new
  	layer=0
  	while(spiral_array.length < total_element_num)
  		spiral_array << self[outer_array_num][inner_array_num]
  		if(direction.eql?('r') && inner_array_num<=self[outer_array_num].length-layer)
  			if(inner_array_num==self[outer_array_num].length-1-layer)
  				direction='d'
  				outer_array_num+=1
  			else
  				inner_array_num+=1
  			end
  		elsif(direction.eql?('d') && outer_array_num<=inner_array_num)
  			if(outer_array_num==self.length-1-layer)
  				direction='l'
  				inner_array_num-=1
  			else
  				outer_array_num+=1
  			end
  		elsif (direction.eql?('l') && inner_array_num>=(0+layer))
  			if(inner_array_num==(0+layer))
  				direction='u'
  				layer+=1
  				outer_array_num-=1
  			else
  				inner_array_num-=1
  			end
  		elsif(direction.eql?('u') && outer_array_num)
  			if(outer_array_num==(0+layer))
  				direction='r'
  				inner_array_num+=1
  			else
  				outer_array_num-=1
  			end
  		end
  	end
  	spiral_array
  end

  def total_elements(two_dim_array)
  	total=0
  	two_dim_array.each{|array| total+=array.length}
  	total
  end
end

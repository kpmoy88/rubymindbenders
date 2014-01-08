class FizzBuzz
  def generally_fizzy(divisor_array, low, high)
    # View README.md for instructions
    fizzy_hash = Hash.new
    while low <= high do
    	fizz_count=0
    	divisor_array.each { |num| 
    		
    			fizz_count+=1 if low%num==0

    	}
    	if fizz_count==divisor_array.length
    		fizzy_hash[low] = "reallyfizzy"
    	elsif fizz_count >= 1
    		fizzy_hash[low] = "fizzy"
    	else
    		fizzy_hash[low] = ""
    	end
    		
    	low+=1
    end
    fizzy_hash.each { |num,fizz_value|
    	print "#{num} #{fizz_value}*\n"
    }
  end
end

class FizzBuzz
  def generally_fizzy(divisor_array, low, high)
    fizzy_hash = Hash.new
    (low..high).each do |cur|
    	fizz_count=0
    	divisor_array.each { |num| 	
    		fizz_count+=1 if cur%num==0
    	}
    	if fizz_count==divisor_array.length
    		fizzy_hash[cur] = "reallyfizzy"
    	elsif fizz_count >= 1
    		fizzy_hash[cur] = "fizzy"
    	else
    		fizzy_hash[cur] = ""
    	end
    end
    fizzy_hash.each { |num,fizz_value|
    	print "#{num} #{fizz_value}*\n"
    }
  end
end

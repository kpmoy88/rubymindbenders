require_relative 'fixnum'

class Prime
  def self.calculate(n)
    # View README.md for instructions
    # Hint: 
    #  - Use the prime? method you created in prime.rb
    #  - You only need to see if the first 1000 numbers are prime
  	primes = Array.new
  	cur_n = 0
  	cur_num = 2
  	while cur_n < n
  		if cur_num.prime?
  			primes.push(cur_num) 
  			cur_n+=1
  		end
  		cur_num+=1
  	end
  	return primes[n-1]
  end
end

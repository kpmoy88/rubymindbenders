require_relative 'fixnum'

class Prime
  def self.calculate(n)
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
  	primes[n-1]
  end
end

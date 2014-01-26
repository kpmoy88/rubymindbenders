class Fixnum
  def prime?
  	prime = Array.new(self+1)
  	prime.fill(true)
  	prime[0]=false
  	prime[1]=false
  	sqrt_self_num = Math.sqrt(self).to_i
  	(2..sqrt_self_num).each do |x|
  		if prime[x]
  			k=x*x
  			while k <= self do 
  				prime[k]=false
  				k+=x
  			end
  		end
  	end
  	prime[self]
  end
end

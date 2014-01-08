class Fixnum
  def prime?
    # View README.md for instructions
    # Hint:
    #  - Remember that since you'll be calling 5.prime?, 5 would be self inside this method
  	#Sieve of Eratosthenes method to determine if number is prime
  	prime = Array.new(self+1)
  	prime.fill(true)
  	prime[0]=false
  	prime[1]=false
  	sqrt_self_num = Math.sqrt(self)
  	i=2
  	while i <= sqrt_self_num do 
  		if prime[i]
  			k=i*i
  			while k <= self do 
  				prime[k]=false
  				k+=i
  			end
  		end
  		i+=1
  	end

  	return prime[self]
  end
end

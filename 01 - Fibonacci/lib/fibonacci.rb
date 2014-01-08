class Fibonacci
  def self.calculate(n)
    # View README.md for instructions
    if n==0 || n==1
        return n
    else
        return self.calculate(n-1) + self.calculate(n-2)
    end
  end
end
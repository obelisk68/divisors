require "divisors/version"

class Integer
  def divide2(include1=false)
    ar = []
    s = include1 ? 1 : 2 
    for i in s..(self ** 0.5)
      ar.push([i, self / i]) if (self % i).zero?
    end
    ar
  end
  
  def divisors
    divide2(true).flatten.uniq.sort
  end
end


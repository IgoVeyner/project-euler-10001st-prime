# Implement your object-oriented solution here!
class Prime
  attr_reader :number

  def initialize(num)
    @num = num
    @number = get_prime()
  end

  private 

  def get_prime
    @number = sieve_of_eratosthenes()[@num - 1]
  end

  def sieve_of_eratosthenes()
    max = @num * 100
    primes = (0..max).to_a
  
    primes[0] = primes[1] = nil 
    
    primes.each do |p|
      next unless p 
      break if p*p > max 
      (p*p).step(max,p) { |m| primes[m] = nil }
    end
  
    primes.compact
  end

end

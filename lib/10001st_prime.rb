def sieve_of_eratosthenes(max)
  primes = (0..max).to_a

  primes[0] = primes[1] = nil 
  
  primes.each do |p|
    # skip nil values (0 and 1)
    next unless p 

    # break if we are past the square root of the max value
    break if p*p > max 

    # Start at the square of the current number, and step through.
    # Go up to the max value, by multiples of the current number, and replace
    # that value with nil in the primes array

    # if p =  2 
    # primes[4] = nil 
    # primes[6] = nil 
    # primes[8] = nil
    # and so on...

    # This fills in all the none prime numbers in the array with nil
    # Do this until p * p > max and you will have an array of nils and primes upto max

    (p*p).step(max,p) { |m| primes[m] = nil }
  end

  primes.compact
end

def prime_number_for(num)
  sieve_of_eratosthenes(num * 100)[num - 1]
end
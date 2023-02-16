# When calculating the sum of prime numbers, you first have to identify the prime numbers within an array.
# You then have to add all of these prime numbers together. In Ruby, you can call an expression that selects
# the prime numbers from an array and then use the “reduce” expression to add them together.
def find_prime_number(num)
  if num <= 1 || num.even?
    prime = false
  elsif (2..Math.sqrt(num)).all? {|i| (num % i ).nonzero? }
    prime = true
  else
    prime = false
  end

  puts prime
end

find_prime_number(3)

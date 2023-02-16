# When calculating the sum of prime numbers, you first have to identify the prime numbers within an array.
# You then have to add all of these prime numbers together. In Ruby, you can call an expression that selects
# the prime numbers from an array and then use the “reduce” expression to add them together.
def find_prime_number(arr)
  sum = arr.reduce(0) do |accumulator, number|
    if number <= 1 || number.even?
    #  puts "Not prime, continuing to next."
     accumulator
    elsif (2..Math.sqrt(number)).all? {|i| (number % i ).nonzero? }
      accumulator + number
    else
      # puts "Not prime, continuing to next."
      accumulator
    end
  end
  puts "Total sum of primes in array => #{sum}"
end

find_prime_number([3,0,3, 54, 43, 11, 123, 322])

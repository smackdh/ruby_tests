## To create an algorithm that finds prime numbers, you have to decide if the number in question can only be divided by itself and 1. To do that,
# you have to check if the number can be divided by itself and each number below it, down to 1.
# The process in Ruby is to check whether each number is divisible by these integers, and if it is,
# then Ruby designates it as a prime number.

# -- Psuedo -- #
# 1. Create a method that takes one argument
# 2. Check if argument can be % divided by itself and it equals 0
# 3. Give feedback

def prime_number(number)
  if number <= 1
    puts 'Not a prime number! ❌'
  elsif number.even?
    puts 'Not a prime number! ❌'
  elsif (2..Math.sqrt(number)).all? { |i| (number % i).nonzero? }
    puts 'PRIME! ⭐️'
  else
    puts 'Not a prome number, bro ❌'
  end
end

prime_number(53)

# You can use Ruby to analyze a number to see if it has repeated digits in it.
# Your objective is to use Ruby to validate whether or not the number is made up of a series of the same digit in a row.
# For example, the number 555 would qualify. A number with only two out of three digits repeating, such as 554,
# wouldn’t qualify.
# The key to solving this Ruby problem is to isolate each digit in the series and then compare them to each other.
# To do this, you separate the digits and put them in an array, which allows Ruby to look at them as individual units.


# -- PSUEDO -- #
# 1. Make a method that takes a number
# 2. Split the number into an array.
# 3. Iterate over array, check if the "count" for that specific value is higher than 1.
# 4. Unless 0, disqualify.

def check_repeated_digits(number)
  arr = number.to_s.split('').tally
  arr.each { |key, value| puts 'Disqualified' unless value <= 1 }
end

def check_repeated_digits_option(number)
  arr = number.to_s.chars.map(&:to_i)
  puts arr.uniq.length != 1 ? "#{number} => Congrats! Digits are are all unique" : "#{number} => Disqualified. Contains duplicates."
end

check_repeated_digits(14_422)
check_repeated_digits_option(555)

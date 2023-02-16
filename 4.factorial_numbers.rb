# The factorial of a number is the product of all the positive integers that are less than or equal to the number in question.
# For example, for the number 6, the factorial would be 1 x 2 x 3 x 4 x 5 x 6 = 720.
# For Ruby, the logic involves first telling Ruby the number to begin with, which is your target integer. For the example above, you’d start with 6.
# You’d then tell the program to multiply that number, then each one below it, by the integer that is one less than it.
# To get you started, in Ruby, the line accomplishing this task could look like this:
# number = number – 1

# -- PSUEDO -- #
# 1. Get the number in method
# 2. Do a ".." up until the given number
# 3. And iterate over all of these, multiplying it to a sum as long as it's less than number, but over 0.
# 4. print out sum
def factorial_numbers(number)
  arr = (1..number).to_a
  sum = arr.reduce(1) do |accmulator, value|
    accmulator * value
  end
  puts sum
end

factorial_numbers(6)

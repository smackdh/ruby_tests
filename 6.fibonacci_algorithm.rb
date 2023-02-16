# A Fibonacci Sequence is created by adding two numbers to create the next number in the sequence.
# You then sum that number with the one preceding it to get the next number,, and so on.
# For example, if you have the sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, then the next number in the sequence is 55.
# To do this in Ruby, you can use a “while” expression to create a starting value and then
# tell Ruby which integers to add together.

# -- Psuedo --- #
# 1. Method takes one number.
# 2. Then as long as max is less than 100
# 3. Number = []
# 4. max = number.last + number[-1]
def fibonnaci_count(max)
  count = 0
  arr = [0,1]
  while count <= max
    count = arr.last + arr[-2]
    arr << count
  end
  arr
end


sequence = fibonnaci_count(2000)
puts "The sequence is: #{sequence}"

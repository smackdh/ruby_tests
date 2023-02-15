## This problem involves finding the number of integers with a value greater than 5. In Ruby speak, you could put it like this: Given an array, count how many items are greater than 5.
# To solve this, you begin by outlining the logic, then translating it into code. An array is a collection of data.
# For example:
# Array = [17, 7, 3, 6, 10, 1]
# First, you go through the entire array and ask if each number is greater than 5.
## You then create a “count” variable by checking if each number has a value higher than 5. If it is, you count it, and if not, you don’t.

# --- PSUEDO ---- #
# Create new array
# Iterate through the old array, with a condition to check if each number has a greater value than 5
# if it does, push it to my new array
# check length of the new array


# ---- SOLUTION ----- #

arr = [17,7,3,6,10,1]
new_arr = Array.new
arr.each {|number| number >= 5 ? new_arr << number : nil }
puts "This is the old array#{arr}"
puts "this is how many numbers were bigger than 5: #{new_arr.count}"


# ---- SOLITION 2 ---- #
count = arr.count {|number| number >= 5 }
puts "numbers bigger than 5: #{count}"

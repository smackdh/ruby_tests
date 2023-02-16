# For this problem, you make a function that examines an array of numbers ranging
# between 1 and 10 that’s missing
# one number and have the function find the number that’s missing.
# For example, the series of numbers could be [2, 1, 5, 4, 6, 9, 7, 8, 10].
# This array is missing the number 3. The goal of this problem is to write code
# that figures out that the number 3 is missing.
# Ruby has an expression called “findmissingnumber” that you can use to examine
# the array you’ve written.
# You can instruct Ruby to compare that array to one that has the missing number,
# and Ruby’s internal logic
# can pinpoint the integer that “should” be there.

def missing_number(array)
  array = array.sort
  first = array.min
  last = array.max
  perf_arr = (first..last).to_a
  missing_numbers = []
  if array == perf_arr
    puts 'No missing numbers'
  else
    perf_arr.each do |number|
      missing_numbers << number unless array.include?(number)
    end
    puts "These are the numbers missing: #{missing_numbers}"
  end
end

missing_number([1,3,4,5,9,15,8,10,7,6])

# In this problem, your goal is to create a function that uses a number as an argument, then increases it by a value of one. For example, if the number in your argument is 3, you want 4 to be returned, or if your argument number is -8, you want the number returned to be -7.
# In Ruby, you’ll use the “addition” expression to do this, which adds a value to the value that’s in your argument.

def increase_number_passed(number)
  puts number + 1
end

increase_number_passed(3)
increase_number_passed(-3)

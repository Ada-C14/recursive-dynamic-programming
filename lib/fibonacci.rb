# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  # raise NotImplementedError, "Please implement this method for the project"
  if n == 0 
    return 0
  end
  if n == 1
    return 1
  end

# return fibonacci(n-2) + fibonacci(n-1)
return fib_helper([0,1] 2, n)
end
# Want the 2 previous fib nums returned, 
def fib_helper(returning_fibs, current_num, n)
# take in n
# return 2 fib nums
# recursive new_n = 2 fib sum
  if current == n
    return returning_fibs.sum
  end
# 1 = [0+1]
# [1, X]
# [1 , 1]

  current_sum = returning_fibs.sum
  returning_fibs[0] = returning_fib[1]
  returning_fibs[1] = current_sum

return fib_helper(returning_fibs, current_num + 1, n)


end
# Add two previous to update before then next goes around.
# Calc sum of the previous 2 numbers then move to the next 2
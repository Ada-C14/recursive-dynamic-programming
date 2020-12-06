# Improved Fibonacci
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there

# Time Complexity - O(n)
# >> max n stack frames at a time (one fib_helper branch is explored at a time)
# >> hash accessing is O(1)
#
# Space Complexity - O(n)
# >> max n stack frames at a time
# >> stored_fibs hash of up to n values

def fibonacci(n)
  raise ArgumentError, 'n must be greater than or equal to 0' if n < 0
  return fib_helper({ 0 => 0, 1 => 1 }, n)
end

def fib_helper(stored_fibs, n)
  stored_fibs[n] = fib_helper(stored_fibs, n - 1) + fib_helper(stored_fibs, n - 2) unless stored_fibs[n]

  return stored_fibs[n]
end

####################################
# Solution from class:

# def fibonacci(n)
#   raise ArgumentError, 'n must be greater than or equal to 0' if n < 0
#   return fib_helper([0, 1], 2, n)
# end
#
# def fib_helper(solutions, current, n)
#   return n if n == 0 || n == 1
#
#   if current == n
#     return solutions[n - 1] + solutions[n - 2]
#   end
#
#   solutions << solutions[current - 1] + solutions[current - 2]
#   return fib_helper(solutions, current + 1, n)
# end

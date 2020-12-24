# Improved Fibonacci????
# PLEASE READ NOTE BELOW:
# I didn't change anything from the class solution..not sure what to change!

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fib_helper([0,1], 2, n)
end

def fib_helper(solutions, current, n)
  if n < 0
    raise ArgumentError
  elsif n == 0 || n == 1
    return n
  end

  if current == n
    return solutions[n-1] + solutions[n-2]
  end

  solutions << solutions[current - 1] + solutions[current - 2]
  p solutions
  return fib_helper(solutions, current + 1, n)
end
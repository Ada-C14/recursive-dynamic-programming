# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError, 'Cannot calculate fibonacci for negative integers' if n < 0 
  return fibonacci_helper(n, 2, [0, 1])
end

def fibonacci_helper(n, current, solutions)
  return n if n <= 1

  if n == current
    return solutions[n - 1] + solutions[n - 2]
  end

  solutions << solutions[current - 1] + solutions[current - 2]
  return fibonacci_helper(n, current + 1, solutions)
end

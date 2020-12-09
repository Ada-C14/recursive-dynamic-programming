# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end
  return fibonacci_helper([0,1], 2, n)
end

def fibonacci_helper(solutions, current, n)
  return n if n == 0 || n == 1

  if current == n
    return solutions[n-1] + solutions[n-2]
  end

  solutions << solutions[current-1] + solutions[current-2]
  return fibonacci_helper(solutions, current+1, n)
end
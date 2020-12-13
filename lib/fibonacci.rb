# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0

  return fibonacci_helper([0, 1], 2, n)
end

def fibonacci_helper(previous, current, n)

  return n if n == 0 || n == 1

  if current == n
    return previous[n - 1] + previous[n - 2]
  end

  return fibonacci_helper(previous, current + 1, n)
end

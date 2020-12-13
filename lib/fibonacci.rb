# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - 0(n)  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0

  return fibonacci_helper(0, 1, 2, n)
end

def fibonacci_helper(initial, previous, current, n)

  return n if n == 0 || n == 1
  return initial + previous if current == n

  temp = initial
  initial = previous
  previous = temp + previous

  return fibonacci_helper(initial, previous, current + 1, n)
end

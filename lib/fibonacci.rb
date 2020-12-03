# Improved Fibonacci

# Time Complexity - O(n)
# >> max n stack frames at a time
# >> hash accessing is O(1)
# Space Complexity - O(n)
# >> max n stack frames at a time
# >> STORED_FIBS hash of up to n values
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there

STORED_FIBS = {}

def fibonacci(n)
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 1 if n == 1

  unless STORED_FIBS[n]
    STORED_FIBS[n] = fibonacci(n - 1) + fibonacci(n - 2)
  end

  return STORED_FIBS[n]
end




# Improved Fibonacci

# Time Complexity - O(n); total of n-2 calls
# Space Complexity - O(n); n-2 calls on the stack
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fibonacci_helper(0, 1, 2, n)
end

def fibonacci_helper(first, second, current, n)
  raise ArgumentError if n < 0

  return n if n == 0 || n == 1

  return first + second if current == n

  return fibonacci_helper(second, first + second, current + 1, n)
end

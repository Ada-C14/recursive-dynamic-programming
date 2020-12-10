# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  if n < 0
    raise ArgumentError.new("must be greater than or equal to 0.")
  end

  return fibonacci_helper(0, 1, 2, n)
end

def fibonacci_helper(sol_n2, sol_n1, current, n)
  return n if n == 0 || n == 1

  if current == n
    return sol_n2 + sol_n1
  end

  return fibonacci_helper(sol_n1, sol_n2 + sol_n1, current + 1, n)
end
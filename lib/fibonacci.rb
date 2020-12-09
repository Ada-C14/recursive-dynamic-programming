# Improved Fibonacci

# Time Complexity - O(n) where n is the length of the number passed
# Space Complexity - O(n) where the solutions array increases linearly with increase of n?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  # raise NotImplementedError, "Please implement this method for the project"
  return raise ArgumentError if n < 0
  # return n if n == 0 || n == 1

  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  return n if n == 0 || n == 1

  if current == n
    return solutions[n - 1] + solutions[n-2]
  end

  solutions << solutions[current - 1] + solutions[current -2]
  return fib_helper(solutions, current + 1, n)
end
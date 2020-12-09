# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there

def fibonacci(n)
  return raise ArgumentError if n < 0

  return n if n < 2

  solutions = [0, 1]

  return fib_helper(solutions, 2, n)
end

def fib_helper(solutions, current, n)
  return solutions[n] if n < 2

  solutions[0], solutions[1] = solutions[1], (solutions[0]+solutions[1])

  return solutions[1] if n == current

  return fib_helper(solutions, current + 1, n)
end
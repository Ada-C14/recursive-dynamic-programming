# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there

def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solution, current, n)
  return n if n == 0 || n == 1

  if current == n
    return solution[n - 1] + solution[n -2]
  end

  solution << solution[current - 1] + solution[current - 2]
  return fib_helper(solution, current + 1, n)
end
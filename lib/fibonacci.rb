# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end

  if n == 0 || n == 1
    return n
  end

  solutions = [0, 1]
  current = 2

  while current < n
    solutions << solutions[current - 1] + solutions[current - 2]
    current += 1
  end

  return solutions[current - 1] + solutions[current - 2]
end

# Recursive Solution

def fibonacci_recursive(n)
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

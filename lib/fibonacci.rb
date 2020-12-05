# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - Constant

def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solutions, current, n)
  return n if n == 0 || n == 1

  if n == current
    return solutions[0] + solutions[1]
  end

  temp = solutions[0]
  solutions[0] = solutions[1]
  solutions[1] += temp

  return fib_helper(solutions, current + 1, n)
end

# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci_recursive(n)
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
  p solutions

  return fib_helper(solutions, current + 1, n)
end

p fibonacci_recursive(8)
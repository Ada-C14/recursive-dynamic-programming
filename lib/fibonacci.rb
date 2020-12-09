# Improved Fibonacci

# Time Complexity - O(n)--have to go through solution at least n times.
# Space Complexity - O(n)!!! I hope :) (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise TypeError, "n must be a positive integer" unless n.is_a?(Integer)
  raise ArgumentError, "n must be a positive integer!" if n < 0

  return fibonacci_helper([0,1], 2, n)
end

def fibonacci_helper(solutions, current, n)
  return n if n == 0
  return 1 if n == 1 || n == 2

  if current == n
    return solutions[0] + solutions[1]
  end

  memo = solutions[0] + solutions[1]
  solutions[0] = solutions[1]
  solutions[1] = memo

  return fibonacci_helper(solutions, current + 1, n)

end


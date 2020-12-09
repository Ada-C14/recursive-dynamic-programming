# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there


def fibonacci(n)
  return fib_helper([0,1], 2, n)
end

def fib_helper(solutions, current, n)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1
  new_fib = solutions[1] + solutions[0]

  if current == n
    return new_fib
  end

  solutions[0] = solutions[1]
  solutions[1] = new_fib

  fib_helper(solutions, current + 1, n)
end



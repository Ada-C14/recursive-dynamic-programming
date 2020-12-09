# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
#
# 0 1 1 2 3 5 8 13 21 31..
def fibonacci(n) #5
  raise ArgumentError if n < 0

  return fib_helper([0,1], 2, n)
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

# Improved Fibonacci

# Time Complexity - O(n), go through fib for each number one at a time until you reach n
# Space Complexity - ?  (should be O(n)), storing n fibonacci numbres
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0,1], 2, n)
end


def fib_helper(solutions, current, n)
  return n if n == 0 || n == 1


  if current == n
    return solutions[n - 1] + solutions[n - 2]
  end

  # while current < n
    solutions << solutions[current - 1] + solutions[current - 2]
  # end

  return fib_helper(solutions, current + 1, n)
end

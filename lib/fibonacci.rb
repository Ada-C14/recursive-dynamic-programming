# Improved Fibonacci

# Time Complexity - O(n) because of the call stack.
# Space Complexity - Also O(n) because of the call stack, the solution array is constant (only ever has 2 values int he array).
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError.new if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(solution, current, n)
  return n if n == 0 || n == 1

  if current == n
    return solution[0] + solution[1]
  end

  solution = [solution[1], (solution[0] + solution[1])]
  return fib_helper(solution, current + 1, n)
end

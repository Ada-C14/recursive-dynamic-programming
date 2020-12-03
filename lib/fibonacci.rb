# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(n, 2, [0, 1])
end

def fib_helper(number, current, solutions)
  return number if number == 0 || number == 1

  if number == current
    return solutions.sum
  end

  new_sum = solutions.sum
  solutions[0] = solutions[1]
  solutions[1] = new_sum

  return fib_helper(number, current + 1, solutions)

end
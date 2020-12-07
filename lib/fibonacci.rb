# Improved Fibonacci

# Time Complexity - O(n) - linear to the n
# Space Complexity - O(n) due to the call stack
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fib_helper(0, 1, 2, n)
end

def fib_helper(fib_1, fib_2, current, n)
  raise ArgumentError, 'number can\'t be less than 0' if n < 0

  return n if n == 0 || n == 1

  # instead of having a solutions array, find the fib based the the last two fibs
  if current == n
    return fib_1 + fib_2
  end

  fib_1, fib_2 = fib_2, (fib_2 += fib_1)

  # increment the current but leave the other params alone
  return fib_helper(fib_1, fib_2, current + 1, n)
end

p fibonacci(100)

# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(0, 1, 2, n)
end

def fib_helper(i, j, current, n)

  return n if n == 0 || n == 1

  return i + j if current == n

  temp = i
  i = j
  j = temp + j

  return fib_helper(i, j, current + 1, n)

end
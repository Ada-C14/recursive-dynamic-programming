# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fib_helper(n, first = 0, second = 1, current = 2)
end

def fib_helper(n, first, second, current)
  raise ArgumentError.new("Fibonacci not defined for negative numbers") if n < 0
  return n if n == 0 || n == 1
  return first + second if current == n

  if current.odd?
    second += first
  else
    first += second
  end

  return fib_helper(n, first, second, current+1)
end
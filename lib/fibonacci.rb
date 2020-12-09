# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fibonacci_helper(0,1,2, n)
end

def fibonacci_helper(fib_i, fib_j, current, n)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1

  if current == n
    return fib_i + fib_j
  end

  new_fib = fib_i + fib_j
  fib_i = fib_j
  fib_j = new_fib

  return fibonacci_helper(fib_i, fib_j, current + 1, n)
end

# def fibonacci(n)
#   raise ArgumentError if n < 0
#   if n == 0 || n ==1
#     return n
#   end
#
#   fib_i = 0
#   fib_j = 1
#   current = 2
#
#   while current < n
#     new_fib = fib_i + fib_j
#     fib_i = fib_j
#     fib_j = new_fib
#     current += 1
#   end
#
#   return fib_i + fib_j
# end
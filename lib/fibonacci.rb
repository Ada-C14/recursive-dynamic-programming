# Improved Fibonacci
# require 'benchmark'
# Time Complexity - O(n)
# Space Complexity - O(n) (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError.new("number must be greater than 0") if n < 0
  return n if n < 2
  fib_helper(n, mem = [0,1])
end

def fib_helper(n, mem = [])
  mem[n] ||= fib_helper(n-1, mem) + fib_helper(n-2, mem)
end
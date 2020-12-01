# Improved Fibonacci

# Time Complexity - O(n) because we only calculate each fib once
# Space Complexity - O(n) - call stack memory, created only two integer variables, which take O(1) space. (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  return fib_helper(0, 1, 2, n)
end

def fib_helper(pre_one, pre_two, current, n)
  raise ArgumentError if n < 0
  return n if n == 0 || n == 1

  return pre_one + pre_two if current == n

  temp = pre_one
  pre_one = pre_two
  pre_two += temp
  return fib_helper(pre_one, pre_two, current + 1, n)
end

# Improved Fibonacci

# Time Complexity - O(n) - number of cycles correlates directly with size of n
# Space Complexity - O(n) - array is proportional to n
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return 0 if n.zero?
  helper(n, [0, 1])
end

def helper(n, array)
  return array[-1] if n == 1
  array << array[-1] + array[-2]
  helper(n - 1, array)
end


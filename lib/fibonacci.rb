# Improved Fibonacci

# Time complexity: O(n) - One recursion for every n
# Space compexlity: O(n) - System stack
def fibonacci(n, f0 = 0, f1 = 1, index = 1)
  raise ArgumentError if n < 0
  return 0 if n == 0
  return f1 if index == n
  fibonacci(n, f1, f0+f1, index+1)
end

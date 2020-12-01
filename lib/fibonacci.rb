# Improved Fibonacci

# Time Complexity - O(n), it goes thru every number less than n, so it's O(n).
# Space Complexity - O(n), it saves every number less than fib(n), so it's O(n).
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper([0, 1], 2, n)
end

def fib_helper(store_array, current, n)
  return store_array[n] if n < 2
  store_array.push(store_array[current-1]+store_array[current-2])
  return store_array[current] if current == n 
  return fib_helper(store_array, current+1, n)
end

require 'benchmark'

# Improved Fibonacci
# Time Complexity - O(n), it goes thru every number less than n, so it's O(n).
# Space Complexity - O(1), it only uses a fixed length of array, ie two_steps, so the space complexity is a constant.
def fibonacci(n)
  raise ArgumentError.new("n must greater than 0") if n < 0
  two_steps = [0, 1]
  return fib_helper(two_steps, 2, n)
end

def fib_helper(two_steps, current, n)
  return two_steps[n] if n < 2
  two_steps[0], two_steps[1] = two_steps[1], (two_steps[0]+two_steps[1])
  return two_steps[1] if current == n 
  return fib_helper(two_steps, current+1, n)
end

# Recursion Fibonacci with O(n) space complexity
# Time Complexity - O(n), it goes thru every number less than n, so it's O(n).
# Space Complexity - O(n), it saves every number less than fib(n) in the array "store_array", so it's O(n).
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci_space(n)
  raise ArgumentError.new("n must greater than 0") if n < 0
  return fib_space_helper([0, 1], 2, n)
end

def fib_space_helper(store_array, current, n)
  return store_array[n] if n < 2
  store_array.push(store_array[current-1]+store_array[current-2])
  return store_array[current] if current == n 
  return fib_space_helper(store_array, current+1, n)
end


ans = nil
fib_to_find = 39

# Recursion Space complexity O(1) & O(n) had similar run times.
Benchmark.bm(20) do |bm|
  bm.report('Fib recursive space O(1)') do
    ans = fibonacci(fib_to_find)
  end

  bm.report('Fib recursive space O(n)') do
    ans = fibonacci_space(fib_to_find)
  end
end

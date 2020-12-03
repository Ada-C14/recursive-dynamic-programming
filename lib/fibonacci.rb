# Improved Fibonacci

# Time Complexity - O(n)
# The main method is called once and the helper method is called n-1 times.
# The number of function calls increases linear to an increase in the
# integer input. All functions performed inside of the helper method
# are O(1) time complexity so there is no nested complications.
#
# Space Complexity - O(n)
# The number of function calls added to the stack increases linear
# to the size of the input. The only data structures used in
# the method are constant (one variable current, which is always
# an integer, and one array last_two_fib, which is only ever two elements
# long) and so they do  not add to the space complexity.

def fibonacci(n)
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 1 if n == 1

  return recursive_fib_helper([0, 1], 2, n)
end

def recursive_fib_helper(last_two_fib, current, n)
  new_fib = last_two_fib[0] + last_two_fib[1]
  return new_fib if current == n

  return recursive_fib_helper([last_two_fib[1], new_fib], current + 1, n)
end
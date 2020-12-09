# Improved Fibonacci
# Earlier you saw how an array could be used to store Fibonacci numbers resulting in a time-complexity reduction from O(2n) to O(n).
# Now we will take this a set further, because to find a given Fibonacci number, you only need to find the previous two numbers.
#
# Reminder:
#
# Fib(0) = 0 Fib(1) = 1
#
# Fib(n) = Fib(n-2) + Fib(n-1), for all n >= 2
#
# Restrictions:
#
# You cannot use a loop, use recursion.
# Your solution should be O(n) space complexity, due to the call stack.

# Time Complexity - O(n)
# Space Complexity - O(n)  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  fib_helper(1, 1, 2, n)
end

def fib_helper(previous_fib = 1, current_fib = 1, current_n = 2, n)
  return n if n == 0 || n == 1

  raise ArgumentError if n < 0

  if current_n == n
    return current_fib
  else
    return fib_helper(current_fib, current_fib + previous_fib, current_n + 1, n)
  end
end

# Improved Fibonacci
# Time Complexity - O(n)
# Space Complexity - O(n)

def fibonacci(n)
  return fib_helper(0, 1, 2, n)
end

def fib_helper(fib_minus_two, fib_minus_one, current, n)
  return n if n == 0 || n == 1
  raise ArgumentError if n < 0

  if current == n
    return fib_minus_one + fib_minus_two
  end

  return fib_helper(fib_minus_one, fib_minus_one + fib_minus_two, current + 1, n)
end
# Improved Fibonacci

# Time Complexity - O(n), the number of stack calls is be proportional to the size of n
# Space Complexity - O(n) the call stack depth is proportion to the size of n
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  raise ArgumentError if n < 0
  return fib_helper(1, 0, 2, n)
end

def fib_helper(fib1, fib2, current, n)
  return n if n == 0 || n == 1

  if current == n
    return fib1 + fib2
  end

  temp = fib1
  fib1 += fib2
  fib2 = temp

  return fib_helper(fib1, fib2, current + 1, n)

end


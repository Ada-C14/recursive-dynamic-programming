# Improved Fibonacci

# Time Complexity - 0(n)
# Space Complexity - 0(1)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  if n < 0
    raise ArgumentError
  end
  a = 0  #Fib(0) = 0,
  b = 1  #Fib(1) = 1,

  n.times { a, b = b, a + b }

  return a
end



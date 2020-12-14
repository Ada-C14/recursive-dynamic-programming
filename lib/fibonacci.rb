# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(n)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
# Calculates each fib(n) only once, stores the answers we already know
#
def fibonacci(n, hash = {})

  if n < 0
    raise ArgumentError, "n is less than 0"
  end

  if n == 0
    return 0
  end

  if n == 1
    return 1
  end

  if hash[n]
    return hash[n] # return the calculated value, instead of recalculating it again
  end

  hash[n] = fibonacci(n - 1, hash) + fibonacci(n - 2, hash)

  return hash[n]

end


# 0,1,2,3,4,5,6
# 0,1,1,2,3,5,8


# Improved Fibonacci

# Time Complexity - ?
# Space Complexity - ?  (should be O(n))
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  solutions = [0,1]
  current = 2
  return fib_helper(n, current, solutions)

end

def fib_helper(n,current,solutions)
  if n == 0 || n == 1
    return n
  end
  if current == n
    return solutions[current - 1] + solutions[current - 2]
  end
  # solutions = [solutions[1], (solutions[current -  1] + solutions[current - 2])]
  solutions << solutions[current - 1] + solutions[current - 2]
  current += 1
  fib_helper(n, current, solutions)
end

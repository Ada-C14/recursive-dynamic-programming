# frozen_string_literal: true

# Improved Fibonacci

# Time Complexity - O(n)
# Space Complexity - O(1)
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there


#How do I make it a better space and time complexity method
# def fibonacci(n)
#   if n < 0
#     raise ArgumentError "Fibonacci does not exist for negatives!"
#   elsif n == 0 || n == 1
#     return n
#   else
#     return (fibonacci(n - 1) + fibonacci(n - 2))
#   end
# end


#Dynamic recursive:
# Given 2 first solution, calculating the next fib starting 2
# Refactoring using memoization* learn about it more
def fibonacci(n)
  return fib_helper(1, 0, 2, n)
end

def fib_helper(solution_1, solution_2, current, n)
  if n < 0
    raise ArgumentError.new("Fibonacci does not exist for negatives!")
  end

  return n if n == 0 || n == 1

  return solution_1 + solution_2 if current == n

  solution = solution_1 + solution_2

  return fib_helper(solution, solution_1, current + 1, n)
end

# p fibonacci(15)
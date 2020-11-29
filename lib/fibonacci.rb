# Improved Fibonacci

# Time Complexity -  I'm pretty sure this is O(n) time complexity. First off, there is only one recursive
#                    call per recursive step, which prevents that 2^n branching we see in the non-memoized
#                    Fib function, and secondly the recursives call directly respond to the length of the stack,
#                    which is size n for the nth Fibonacci number.
# Space Complexity - O(n) - the array use to store the previous values will grow along with the stack --
#                    that is to say, the nth Fibonacci number will have an n - level stack and an array of
#                    of length n to hold all previous Fibonacci numbers. n + n = O(2n) = 2*O(n) = O(n) space
#                    complexity.
# Hint, you may want a recursive helper method
# Hint:  Fib(0) = 0, Fib(1) = 1, work up from there
def fibonacci(n)
  # return fib_helper([0, 1], 2, n)
  return faster_fib_helper([0, 1], 2, n)
end
# fib helper stores all elements found so far in the same array
# this way we don't have to repeatedly go deeper in the recursive tree
def fib_helper(solution_arr, current, n)
  # n is negative
  if n < 0
    raise ArgumentError, "Fib(n) error - n must be 0 or larger."

  # base cases n = 0 , n = 1
  elsif n == 0 || n == 1
    return n

  # the other case we check for is if current has reached n
  # this means we can end the recursion
  # and the final return value will be the sum of the previous two
  # elements in solution_arr we have been saving up until this point
  elsif current == n
    # n or current works here since they're the same value at this point
    return solution_arr[n - 1] + solution_arr[n - 2]

  # otherwise we shovel the next fib # to the back of the array
  # again, found by summing the two elements in front
  # and recusively call the helper with current incremented
  else
    # we only have current number of elements at this point
    solution_arr << (solution_arr[current - 1] + solution_arr[current - 2])
    return fib_helper(solution_arr, current + 1, n)
  end
end

# putting this here for practice with O(1) space complexity (will still have O(n) time thanks to correspondence
# with the stack)
# since we only REALLY need the last two elements of the array prior to finding the next Fib number,
# we can continually replace values in the array holding our solutions with an array holding the last number and
# the next number we calculate, otherwise the function should be pretty much the same
# (there's also some really fancy formula but i don't think it's 100% accurate, rather an estimate?)

def faster_fib_helper(solution_arr, current, n)
  # n is negative
  if n < 0
    raise ArgumentError, "Fib(n) error - n must be 0 or larger."

    # base cases n = 0 , n = 1
  elsif n == 0 || n == 1
    return n

    # the other case we check for is if current has reached n
    # this means we can end the recursion
    # and the final return value will be the sum of the previous two
    # elements in solution_arr we have been saving up until this point
  elsif current == n
    # n or current works here since they're the same value at this point
    # can do this because now the array only holds two elements at a time.
    return solution_arr[0] + solution_arr[1]

    # otherwise we shovel the next fib # to the back of the array
    # again, found by summing the two elements in front
    # and recusively call the helper with current incremented
  else
    # we only have current number of elements at this point
    # we have to specifically save this in solution_arr, if we do it in the function call
    # it will create a new slot instead of re-using the old one i think
    temp = solution_arr[0] + solution_arr[1]
    solution_arr[0] = solution_arr[1]
    solution_arr[1] = temp
    return faster_fib_helper(solution_arr, current + 1, n)
  end

end
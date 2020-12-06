# Superdigit

# Time Complexity - O(logn) - n is reduced by a significant factor each recursion
# This goes for the helper method sum_of_digits as well
# Space Complexity - O(logn) - system stack
def super_digit(n)
  raise ArgumentError if n < 0
  return n if n < 10
  super_digit(sum_of_digits(n))
end

def sum_of_digits(n, sum = 0)
  raise ArgumentError if n < 0
  return sum + n if n < 10
  sum_of_digits(n / 10, sum + n % 10)
end

# def super_digit_helper(n, sum)
#   return n if n < 10
#   super_digit_helper(n / 10, n % 10)
# end
  

# Time Complexity - O(logn) - k is effectively reduced to nothing
# It is used as a one-time multiplication constant. Thus complexity of super_digit applies
# Space Complexity - O(logn) - System stack
def refined_super_digit(n, k)
  raise ArgumentError if n < 0
  return n if n < 10
  refined_super_digit(k * super_digit(n), 1)
end
    
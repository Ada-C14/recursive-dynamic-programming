# Superdigit

# (where n is number of digits)
# Time Complexity - O(n^2)
# O(n) for sum of digits * O(n) (low coefficient) for super_digit
# Space Complexity - O(n^2) - system stack
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

# (where n is number of digits)
# Time Complexity - O(kn^2) - O(n^2) for super_digit, k as a constant multiplier
# Space Complexity - O(n^2) - System stack
def refined_super_digit(n, k)
  raise ArgumentError if n < 0
  return n if n < 10
  refined_super_digit(k * super_digit(n), 1)
end
    
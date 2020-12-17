# Superdigit
# We define super digit of an integer using the following rules:
#
# Given an integer, we need to find the super digit of the integer.
#
# If the number has only one digit, then its super digit is that number.
# Otherwise, the super digit of x is equal to the super digit of the sum of the digits of x.
# For example, the super digit of 9875 will be calculated as:
#
# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2
# So the super_digit of 9875 is 2.

# Time Complexity - O(log n) - scales logarithmically with magnitude of n (??)
# but O(n^2) where n is the number of digits (??)
# Space Complexity - O(log n) where n is magnitude (??)
# but O(n) if n is number of digits (??)
def super_digit(n)
  super_digit_helper(n, 0)
end

def super_digit_helper(n, sum = 0)
  if n/10 == 0
    n += sum
      return n if n/10 == 0
    sum = 0
  end
  digit = n % 10
  return super_digit_helper(n/10, (sum + digit))
end

# super_digit using % 9
# # Time Complexity: O(1)?
# # Space Complexity: O(1)?
# def super_digit(n)
#   return 1 + ((n-1) % 9)
# end

# Time Complexity - O(log n * log k) scales logarithmically with magnitude of n and k (??)
# but O((n*k)^2) where n is number of digits and k is the number of digits in the multiplier (??)
# Space Complexity - same as time complexity
def refined_super_digit(n, k)
  super_digit = super_digit_helper(n, 0)

  return super_digit_helper(super_digit * k, 0)
end

# # refined_super_digit using % 9
# # Time Complexity: O(1)?
# # Space Complexity: O(1)?
# def refined_super_digit(n, k)
#   return 1 + (((k * n) - 1) % 9)
# end
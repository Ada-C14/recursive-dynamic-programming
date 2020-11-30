# Superdigit

# Time Complexity - O(n)? - We made the recursive call 6 times to get to the answer for 9875. When the sum of the digits (sum) is less than 10, we will call the number of digits times (n). When 100 > sum > 10, we make n + 2 calls. When 1000 > sum > 100, we make n + 3 calls. Because of recursion, we need to run n times again to add up the digits. So it's O(2n) + something like O(log n) maybe??? and thus equals to O(n)?
# Space Complexity - O(n)
# I stumbled upon this solution when refactoring my previous very confusing solution. I don't feel like it's dynamic programming, but it is neat.
# super_digit(9875)
# 9875 % 10 + super_digit(9875 / 10) = 5 + 7 + 8 + 9 = 29
#              = 987 % 10 + super_digit(987 / 10) = 7 + 8 + 9
#                            = 98 % 10 + super_digit(98 / 10) = 8 + 9
#                                         = 9 % 10 + super_digit(9 / 10) = 9
# n = 29 because n > 9
# 29 % 10 + super_digit(29 / 10) = 2 + 9
#           = 9 % 10 super_digit(9 / 10) = 9

def super_digit(n)
  n = super_digit_helper(n) if super_digit_helper(n) > 9
  return super_digit_helper(n)
end

def super_digit_helper(n)
  return n if n < 10
  return n % 10 + super_digit(n / 10)
end


# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
#
# end
#


# Superdigit

# super_digit(9875) --> superdigit(9 + 8 + 7 + 5) = superdigit(29)
# super_digit(29)   --> superdigit(2 + 9) = superdigit(11)
# super_digit(11)   --> superdigit(1 + 1) = superdigit(2)
# super_digit(2) --> 2

# Understanding the problem:
# >> we want to sum each digit in the input int
# >> create sum var set to 0
# >> grab one rightmost digit at a time using % 10
# >> add this num to sum
# >> update the input by dividing by 10 (int division)
# >> know when to stop updating when n is 0
# (meaning in the last iteration, n % 10 gave us the final digit, which we added to sum)
# >> keep calling fn until input n is a single digit (n / 10 == 0)

# Time Complexity: O(n^2), where n is the number of digits in n
# >> number of digits stack frames (unless making use of tail recursion)
# >> calculation of sum_digits occurs num digits times

# Space Complexity: O(n), where n is the number of digits in n
# >> number of digits stack frames (unless making use of tail recursion)

def super_digit(n)
  return n if n / 10 == 0

  sum_digits = 0
  until n == 0
    sum_digits += n % 10
    n /= 10
  end

  super_digit(sum_digits)
end

####################################

# Problem:
# refined_superdigit(n, k) = superdigit(148148148)
# = superdigit(1 + 4 + 8 + 1 + 4 + 8 + 1 + 4 + 8)
# = superdigit(39)
# = superdigit(3 + 9)
# = superdigit (12)
# = superdigit (1 + 2)
# = 3

# Examples:
# refined_superdigit(9, 1) = superdigit(9) = 9
# refined_superdigit(9, 2) = superdigit(99) = superdigit(9 + 9) = superdigit(9 * 2)
# refined_superdigit(9, 3) = superdigit(999) = superdigit(9 + 9 + 9) = superdigit(9 * 3)
#
# refined_superdigit(12, 1) = superdigit(12) = superdigit(1 + 2) = superdigit(3) = 3
# refined_superdigit(12, 2) = superdigit(1212) = superdigit(6) = 6
# >> 6 == 3 * 2
# refined_superdigit(12, 3) = superdigit(121212) = superdigit(9) = 9
# >> 9 == 3 * 3
# refined_superdigit(12, 4) = superdigit(12121212) = superdigit(12) = superdigit(3) = 3
# >> superdigit(48) = superdigit(12) = ...
#
# Since we sum each of the digits in the number that is passed into superdigit,
# and refined_super_digit will replicate the base, n, k times
# we can skip a step and pass in directly n * k

# Time Complexity - O(m^2), where m is the number of digits in n*k
# >> n*k num digits stack frames for super_digit
# >> calculation of sum_digits in super_digit occurs num digits times

# Space Complexity - O(m), where m is the number of digits in n*k
# >> n*k num digits stack frames for super_digit

def refined_super_digit(n, k)
  return super_digit(n * k)
end
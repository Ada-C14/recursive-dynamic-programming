# Superdigit

# TODO Ringo in what way in this dynamic programming and not just regular recursion?
#
# Time Complexity - O(n log n)
# The number of times that super_digit will be called
# does increase as the size of n increases, but in a
# logarithmic rather than linear fashion, since the controlling
# factor is the number of digits in n. N of 5 digits will drop to
# 2 digits after the first pass, and so will n of 6 digits.
# However, each time that super_digit is called, it runs functions
# with O(n) time complexity (one after the other, rather than nested).
# O(n) nested in O(log n) results in O(n log n) time complexity.
#
# Space Complexity - O(n)
# TODO Ringo clear this up
# At the most things on the stack trace, there will be
# some number of super_digit calls (determined by but not equal to n),
# and on top of that all of the calls made by, like, .map.
# so O(n) + O(log n), in which case, the larger one takes precedence?
# TODO lol seriously clear this up
# But also super_digit does create new data structures ever call
# (string and array), the length of which is determined by (but not equal to)
# n. But those only last during that one particular function call.
# 1. do we account for those in the space complexity at *all*,
# given then only exist for one super_digits call
# 2. if we do have to factor them in, in this particular instance,
# are they O(n) or O(log n)? (the array will only get longer as n
# gets bigger pretty slowly)
# 3. if we factor them in, do they make a difference? is this O(n) +
# O(whatever) or nested O(whatever)?
def super_digit(n)
  return n if n < 10

  sum = helper_digits(n).sum
  return super_digit(sum)
end

def helper_digits(n)
  return n.to_s.split("").map { |dig| dig.to_i }
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return n * k if n * k < 10

  sum = helper_digits(n).sum
  return super_digit(sum * k)
end
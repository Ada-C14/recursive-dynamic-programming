# Time Complexity: O(n^2)
# The number of times super_digit will be called is
# determined by the number of digits in the input
# and it will increase as the number of digits increases.
# Each time that super_digit is called, it calls helper_digits
# which runs functions with O(n) time complexity (one after the other).
# O(n) is nested in O(n) results in O(n^2) time complexity.
#
# Space Complexity: O(n)
# The super_digit calls, being recursive, will stay on the stack trace
# until all the ones called after them have been resolved. So at most,
# there will be a number of super_digit calls on the stack at one
# point in time that is determined by O(n). super_digits creates
# no data structures, just holds a constant number of integers (n and sum).
#
# Each super_digit calls helper_digits, which makes O(n) function
# calls. However, each function call for helper_digit is resolved and
# removed from the stack trace before the next super_digit call, so there
# is only ever one helper_digits call on the stack at one time. Likewise,
# helper_digits creates data structures that will increase linear to the
# size of the input, but these data structures only exist for the length
# of the helper_digits call.
#
# At most, there are O(n) space taken up by super_digits plus O(n)
# taken up by one function call of helper_digits. O(n) + O(n)
# results in O(2n), or after dropping the constant, O(n).
def super_digit(n)
  return n if n < 10

  sum = helper_digits(n)
  return super_digit(sum)
end


def helper_digits(n)
  digits = n.to_s.split("").map { |dig| dig.to_i }
  return digits.sum
end


# Time complexity: O(n^2)
# refined_super_digit gets called once.
# It calls super_digit once or potentially twice, sequentially,
# so super_digit's O(n^2) time complexity is nested inside of
# its O(1) time complexity for O(n^2) complexity.
#
# Space complexity: O(n)
# refined_super_digit adds one stack frame to the call
# stack. It calls super_digit, which has a space complexity
# of O(n). refined_super_digit does not build any
# data structures, just tracks a constant number of integers.
def refined_super_digit(n, k)
  super_digit = super_digit(n)
  refined = super_digit * k

  if refined < 10
    return refined
  else
    return super_digit(refined)
  end
end
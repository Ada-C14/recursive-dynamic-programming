# Superdigit

# Time Complexity - O(log k*n), but it really feels like O(log n):
#                              # of times you sum the digits is a operation dependent on the number of
#                              digits (n) in the input parameter number (which you continuously divide by 10). as for how many times super_digit is called...
#                              for a k digit number, assume the max possible num is a k-digit number of only 9s.
#                              The number of super_digit calls:
#                              k = 1: 1 call for super_digit(9)
#                              k = 2: 2 calls for super_digit(18) = super_digit(9)
#                              k = 2: 3 calls for super_digit(99) = super_digit(18) = super_digit (9)
#                              k = 11: 4 calls for super_digit (99999999999) = super digit (99) = ...
#                              k = 11111111111: 5 calls for super_digit(a number with k 9s) = super_digit (99999999999)...
#                              essentially, it looks like an incredibly slow logarithmic growth of k recursive calls
#                              that would technically result in O(log k* log n) = O(log k*n), but k is so negligible it
#                              might as well be O(n)... I also don't have space to type 11111111111 1s or 9s...
#
# Space Complexity - O(log k) (but again, basically O(1)) based on what was discussed in time complexity. You are creating 2 new variables and a new
#                    layer on the stack for every recursive call, but as shown above it grows so slowly (and only grows even more slowly)
#                    that I would argue that it is close to O(1).
#
def super_digit(n)
  # assuming we won't accept negative numbers
  raise ArgumentError, "n is less than 0" if n < 0
  # at this point all numbers are >= 0
  if n < 10
    return n
  else
    sum_digits = 0
    copy_n = n
    while copy_n != 0
      sum_digits += copy_n % 10
      copy_n /= 10
    end
    # sum_digits will now be sent to super digit function until it returns a single digit number
    return super_digit(sum_digits)
  end

end

# Time Complexity - O(k * log n) assuming n is the number and k is the number of times n is repeated over itself.
#                    super_digit() is called k times then again for the sum of k super_digit outputs (q), and for all intents
#                     and purposes I am counting super_digit an O(log n) operation for a total of k * log n + log q calls,
#                     which still devolves to O(k * log n), as in the second super_digit call the number input will be
#                     significantly smaller than n.
# Space Complexity - O(k) refined_super_digits doesn't call itself but it calls super_digit, so the sum variable is an
#                    O(1) operation. Thus, we will rely on how large the stack gets for each super_digit call. Again,
#                    super_digit with space complexity of (technically O(log q) to represent the growth of the number of
#                    recursive calls in the stack as demonstrated in the comments for the previous function) O(1), for all
#                    intents and purposes, is called k times for k * O(1) = O(k). The second super_digit call will have a
#                    adds another O(1) space complexity operation that can be considered negligible, as the size of k
#                    will be the main contributing factor to the space complexity.
def refined_super_digit(n, k)
  sum = 0
  k.times do
    sum += super_digit(n)
  end

  return super_digit(sum)
end
    
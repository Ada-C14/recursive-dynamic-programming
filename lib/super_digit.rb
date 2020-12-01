# Superdigit

# Time Complexity - O(n)? - We made the recursive call 6 times to get to the answer for 9875. When the sum of the digits (sum) is less than 10, we will call the number of digits times (n). When 100 > sum > 10, we make n + 2 calls. When 1000 > sum > 100, we make n + 3 calls. Because of recursion, we need to run n times again to add up the digits. So it's O(2n) + something like O(log n) maybe??? and thus equals to O(n)?
# Space Complexity - O(n) - call stack memory
# I got this solution when refactoring my previous very chaotic solution. I don't feel like it's dynamic programming, but it seems clean. Basically, I had super_digit(9 / 10) = 0 here. I did try to make a variable sum to save to sum of the current digits, but didn't get it to work. Somehow it kept getting overwritten by n.
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

# Time Complexity -  O(n)??  We will do the O(n) steps as the previous question to go through all the digits for once. Then we will have the extra steps when our sum * k is greater than 9. I guess it depends on how large k is. If k > 10, sum * k is definitely greater than 9 and so on for k > 100, k > 1000. It's not linear, so I am guessing O(log n).
# Space Complexity - O(n) call stack memory
# Feel kinda off to use a while loop in a recursion, but if statement does not work no matter what I tried. Stop at 12 for k = 3 and n = 148. Not sure why it's not recursive like the previous one. I feel like converting the number to a string will be easier for this two problems, but I didn't want the extra space.
def refined_super_digit(n, k)
  while super_digit_helper(n) * k > 9
    n = super_digit_helper(n) * k
    k = 1
  end
  return super_digit_helper(n) * k
end

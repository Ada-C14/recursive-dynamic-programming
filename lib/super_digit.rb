# Superdigit

# Time Complexity - O(logn)
# We are dividing by 10 each time so I think it is O(logn)
# Space Complexity - O(n)
# The stack grows in proportion to the size of n

def super_digit(n)
  return n if n < 10
  digit_sum = super_digit_helper(n)
  super_digit(digit_sum)
end

# help add the digits up
def super_digit_helper(n, sum = 0)
  return sum if n == 0
  super_digit_helper(n/10, sum + n%10)
end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# def super_digit(n)
#   return n if n < 10
#   digit_sum = super_digit_helper(n)
#   super_digit(digit_sum)
# end
#
# # help add the digits up
# def super_digit_helper(n)
#   return n if n < 10
#   return n%10 + super_digit_helper(n/10)
# end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
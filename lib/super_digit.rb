# Superdigit

# Time Complexity - ?
# Space Complexity - ?

def super_digit(n)
  return n if n < 10
  temp = n % 10 + super_digit(n / 10)
  p  temp
  # n = temp if n < 10

end

#
# def super_digit_helper(sum, n)
#
# end


# Time Complexity - ?
# Space Complexity - ?
# def refined_super_digit(n, k)
#
# end
#


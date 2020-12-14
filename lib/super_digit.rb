# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  # n < 10 ?  n : super_digit(n.digits.sum)
  return n if n < 10

  sum = super_digit_helper(n,0)
  super_digit(sum)
end

def super_digit_helper(n, memo)
  return memo if n == 0
  memo += n % 10

  super_digit_helper(n/10, memo)
end

  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
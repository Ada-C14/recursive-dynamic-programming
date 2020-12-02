# Superdigit

# Time Complexity - O(n), it depends on the digits of the number, so it's O(n). 
# Space Complexity - O(1), only use two extra variables, ie sum and result, to do the calculation. So the Space complexity is a constant.
def super_digit(n)
  sum = 0
  result = super_helper(n, sum)
  while result > 9
    result = super_helper(result, sum)
  end
  return result
end

def super_helper(n, sum)
  return sum += n if n < 10
  sum += n%10
  return super_helper(n/10, sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
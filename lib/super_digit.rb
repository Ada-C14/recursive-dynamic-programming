# Superdigit

# Time Complexity - best case scenario, where n has only 1 digit, is O(1) - constant; otherwise is O(n), where n = number of digits of the integer
# Space Complexity - O(n), where n = number of digits of the integer
def super_digit(n)
  return n if n < 10
  sum = sd_helper(n)

  super_digit(sum)
end

def sd_helper(n, m = 0)
  return m if n == 0
  sd_helper(n / 10, m + n%10)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
# Superdigit

# Time Complexity - ?
# Space Complexity - ?
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
    
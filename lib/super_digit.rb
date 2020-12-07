# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n.digits.length == 1
  new = n.digits.sum
  return super_digit(new)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end

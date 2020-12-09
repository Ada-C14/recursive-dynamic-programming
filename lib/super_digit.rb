# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n.digits.sum if n.digits.length <= 1

  return super_digit(n/10).floor

end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end

p super_digit(9875)
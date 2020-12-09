# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10 # base case
  return super_digit(n.digits.sum) # tail recursion

end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end

# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n if n < 10

  super_digit(n % 10 + super_digit(n / 10))
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n < 10
    return n
  end
  sum = 0
  n = n/10
  sum = n + sum
  sum += super_digit(n.floor)
  return sum
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n if n / 10 == 0
  sum = 0

  until n % 10 == 0
    sum += n % 10
    n /= 10
  end
  n = sum

  return super_digit(n)

end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
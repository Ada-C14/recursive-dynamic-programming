# Superdigit

# Time Complexity O(n)
# Space Complexity Constant
def super_digit(n)
  return n if n < 10
  s_digit = 0
  while n >= 10
    s_digit += n % 10
    n /= 10
  end

  return super_digit(s_digit)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return n if n < 10 && k == 1
  s_digit = 0
  while n >= 10
    s_digit += n % 10
    n /= 10
  end
  s_digit *= k

  return super_digit(s_digit)

end
    
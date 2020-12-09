# Superdigit

# Time Complexity - O(logn)
# Space Complexity - O(logn)
def super_digit(n)
  while n >= 10
    n = n % 10 + super_digit(n / 10)
  end
  return n
end


# Time Complexity - O(logn + logk)
# Space Complexity - O(logn + logk)
def refined_super_digit(n, k)
  return super_digit(super_digit(n) * k)
end
    
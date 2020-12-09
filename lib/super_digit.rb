# Superdigit

# Time Complexity - O(log n)
# Space Complexity - O(log n)
def super_digit(n)
  while n >= 10
    n = n % 10 + super_digit(n / 10)
  end
  return n
end

# Time Complexity - O(log n + log k)
# Space Complexity - O(log n + log k)
def refined_super_digit(n, k)
  super_digit_helper = super_digit(n)
  return super_digit(super_digit_helper * k)
end


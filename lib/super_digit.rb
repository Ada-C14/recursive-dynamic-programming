# Superdigit

# Time Complexity - O(n) where n is number of digits
# Space Complexity - O(n); n calls on the stack
def super_digit(n)
  return n if n < 10

  sum_digits = 0
  until n == 0
    sum_digits += n % 10
    n /= 10
  end

  super_digit(sum_digits)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return super_digit(k * super_digit(n))
end
    
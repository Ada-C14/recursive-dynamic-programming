# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n)
  return n if n % 10 == n

  sum_digits = 0
  while n != 0
    sum_digits += n % 10
    n /= 10
  end

  return super_digit(sum_digits)


end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  sum = 0
  k.times do
    sum += super_digit(n)
  end

  return super_digit(sum)
end
    
# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10

  sum = 0
  until n == 0
    sum += n % 10
    n = n / 10
  end

  return super_digit(sum)
end
  

# Time Complexity - O(n^2)
# Space Complexity - O(n)
def refined_super_digit(n, k)
  return super_digit(n * k)
end
    
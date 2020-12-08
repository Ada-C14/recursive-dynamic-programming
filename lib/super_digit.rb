# Superdigit

# Time Complexity - O(n^2)
# Space Complexity - 0(n)
def super_digit(n)
  return n if n / 10 == 0

    sum_dig = 0

    while n > 0
      sum_dig = sum_dig + n % 10
      n = n / 10
    end
  super_digit(sum_dig)
end

p super_digit(9875)
p super_digit(123)
p super_digit(5)
  

# Time Complexity - O(n^2)
# Space Complexity - 0(n)
def refined_super_digit(n, k)
  super_digit(n * k)
end

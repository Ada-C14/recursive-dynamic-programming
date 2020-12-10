# Superdigit

# Time Complexity - O(n^2) where n is number of digits
# loop through each digit to calculate the sum and then call function recursively n-1 times
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
  

# Time Complexity - O(n^2)
# Space Complexity - O(n)
# same time and space complexity as super_digit
def refined_super_digit(n, k)
  # return super_digit(n * k)
  num = (n.to_s * k).to_i
  return super_digit(num)
end
    
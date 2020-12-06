# Superdigit

# Time Complexity - O(n) where n is number of digits
# Space Complexity - O(n) because of the call stack
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

# Time Complexity - O(n) where n is the number of digits in n
# Space Complexity - O(n) due to the call stack when calling super
def refined_super_digit(n, k)
  # no need to calculate super digit of 148148148
  # first calculate the super digit of n (148) and then multiply by k
  # and then call super_digit on that result (39)

  return super_digit(super_digit(n) * k)
end

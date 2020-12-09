# Superdigit

# Time Complexity - O(logn)
# Space Complexity - O(n)
def super_digit(n)
  sum_digits = sum_digits(n)

  return sum_digits if sum_digits < 10

  return super_digit(sum_digits)
end

def sum_digits(n)
  sum = 0
  while(n > 0)
    sum += n % 10
    n /= 10
  end
  return sum
end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return super_digit(n * k)
end

# Bonus round
# Time Complexity - O(1)
# Space Complexity - O(1)
# I don't understand exactly how this works but I found this:
# https://math.stackexchange.com/questions/2102877/explanation-of-digital-root-sum-formula/2102907
# def super_digit(n)
#   return n % 9 == 0 ? 9 : n % 9
# end
    
# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  return n if n / 10 == 0
  count = add_digits(n)
  return super_digit(count)

end

def add_digits(n)
  count = 0
  until n == 0
    count += n % 10
    n /= 10
  end
  return count
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return n * k if n * k / 10 == 0
  count = add_digits(n) * k
  return refined_super_digit(count, 1)
end
    
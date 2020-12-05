# Superdigit

# Time Complexity - O(d^2) where d is the number of digits in n.
# There will be d number of function calls on the call stack &
# there is a loop will run d times for each call.

# Space Complexity - O(d) because the call stack depth is
# dependent on the number of digits.

def super_digit(n)
  return n if n < 10
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

# Time Complexity - O(d^2) same reasoning as above. The k, doesn't affect the time complexity.
# Space Complexity - O(d) call stack depth is proportional to number of digits.
def refined_super_digit(n, k)
  return n * k if n * k < 10
  count = add_digits(n) * k
  return super_digit(count)
end
    
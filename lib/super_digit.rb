# Superdigit

def digit_helper(n)
  sum = 0
  until n.zero? do
    sum += n % 10
    n = n/10
  end

  return sum
end

def recursive_digit_helper(n)
  return n if n < 10

  return n % 10 + recursive_digit_helper(n / 10)
end

# Time Complexity - O(n)
# Space Complexity - O(log(n))

def super_digit(n)
  return n.abs if n.abs < 10

  sum = recursive_digit_helper(n)

  return super_digit(sum)
end


# Time Complexity - O(log(n))
# Space Complexity - O(log(n))
def refined_super_digit(n, k)
  return n.abs if n.abs < 10 && k == 1
  return 0 if k == 0

  sum = recursive_digit_helper(n)
  sum *= k

  return refined_super_digit(sum, 1)
end





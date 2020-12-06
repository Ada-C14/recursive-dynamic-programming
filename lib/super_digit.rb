# Superdigit

# Time Complexity - 0(n)
# Space Complexity - 0(n)

def super_digit(n)
  return n if n < 10
  sum = n.to_s.chars.map(&:to_i).sum
  return super_digit(sum)
end


# Time Complexity - 0(n)
# Space Complexity - 0(n)
def refined_super_digit(n, k)
  n = (n.to_s * k).to_i
  super_digit(n)
end



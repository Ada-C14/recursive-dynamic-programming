# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  return n if n < 10

  sum = n.to_s.split('').map { |num| num.to_i }.sum

  return super_digit(sum)
end
  

# Time Complexity - O(n)
# Space Complexity - O(n)
def refined_super_digit(n, k)
  num = (n.to_s * k).to_i

  return super_digit(num)
end
    
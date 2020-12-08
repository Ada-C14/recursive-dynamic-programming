# Superdigit

# Time Complexity - o(n)
# Space Complexity - o(n)
def super_digit(n)
  if n < 10
    return n
  end
  digits = n.to_s.split("").map { |num| num.to_i }.sum
  super_digit(digits)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
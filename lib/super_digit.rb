# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  if n < 10
    return n
  end

  super_digit(sum_digits(n))

end

def sum_digits(integer)
  return digits = integer.to_s.split("").map { |num| num.to_i }.sum

end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    
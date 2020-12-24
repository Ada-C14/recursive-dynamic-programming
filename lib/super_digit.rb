# Superdigit

# Time Complexity - ?
# Space Complexity - n
def super_digit(n)
  # n.to_s.split('').map{ |num| num.to_i }.sum
    # n t:1 s:1
    # .to_s t:1 s:n
    # .split('') t:n s:n
    # .map t:n s:n
    # .sum t:n s:1
  if n.to_s.split('').length < 2
    return n
  end
  return super_digit(n.to_s.split('').map{ |num| num.to_i }.sum)
end
  

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  if n == 1 && k == 1
    return n
  end
  digit = n.to_s * k
  super_digit(digit)
end
    
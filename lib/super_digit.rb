# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(n)
def super_digit(n)
  # if the digit is less than 10
  # return digit as super_digit
  if n < 10
    return n
  else
    # splitting each digit in the given n, and generating an array to simplify sum calculations
    num_array = n.to_s.split(//).map{|chr| chr.to_i}
    # elseif digit is > 9 => 52
    # then super_digit = sum of (super_digit(5+2))
    sum = num_array.sum
    return super_digit(sum)
  end
end

# p super_digit(12327)

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  # 1. given n, and k
  # 2. Concatenate n - k number of times
  # 3. return the super digit of n with the concatenated value
  n.to_s
  n = n * k
  return super_digit(n)
end

# p refined_super_digit(148, 3)

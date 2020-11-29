# Superdigit

# Time Complexity - ?
# Space Complexity - ?
def super_digit(n)
  # assuming we won't accept negative numbers
  raise ArgumentError, "n is less than 0" if n < 0

end

# might need this
def super_digit_helper (starting_num, hold_digit_sum)
end

# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
  return k * super_digit(n)
end
    
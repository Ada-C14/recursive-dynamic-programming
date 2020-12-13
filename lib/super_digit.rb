# Superdigit

# Time Complexity - best case scenario, where n has only 1 digit, is O(1) - constant; otherwise is O(n), where n = number of digits of the integer
# Space Complexity - O(n), where n = number of digits of the integer
def super_digit(n)
  return n if n < 10
  sum = sd_helper(n)

  super_digit(sum)
end

def sd_helper(n, m = 0)
  return m if n == 0
  sd_helper(n / 10, m + n%10)
end
  

# Time Complexity - O(n), where n = number of digits of the integer
# Space Complexity - O(n), where n = number of digits of the integer.

def refined_super_digit(n, k)
  return n if n == 1 && k == 1

  int_to_s = n.to_s
  shaped_integer = int_to_s + int_to_s + int_to_s
  str_to_int = shaped_integer.to_i

  super_digit(str_to_int)
end


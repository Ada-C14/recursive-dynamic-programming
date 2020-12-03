# Superdigit

# Time Complexity - O(n)
# Space Complexity - O(1)
def super_digit(n)
  return n if n % 10 == n

  new_sum = super_digit_helper(n, 0)
  return super_digit(new_sum)
end

def super_digit_helper(n, memo)
  dividend, quotient = n.divmod(10)
  memo += quotient

  n % 10 == n ? memo : super_digit_helper(dividend, memo)

end


# Time Complexity - ?
# Space Complexity - ?
def refined_super_digit(n, k)
    
end
    